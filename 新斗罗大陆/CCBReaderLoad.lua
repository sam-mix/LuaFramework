ccb = ccb or {}

function CCBuilderCloneNode(node, owner)
    if node == nil then
        return nil 
    end

    local getOwnerInfos = true
    if owner == nil then
        getOwnerInfos = false
    end

    local ccbNodeCloner = QCCBNodeCloner:createWithNode(node)
    local newNode = ccbNodeCloner:clone(getOwnerInfos)
    local eventNodes = {}

    if nil ~= owner then
        --Callbacks
        local ownerCallbackNames = tolua.cast(ccbNodeCloner:getOwnerCallbackNames(),"CCArray")
        local ownerCallbackNodes = tolua.cast(ccbNodeCloner:getOwnerCallbackNodes(),"CCArray")
        local ownerCallbackControlEvents = tolua.cast(ccbNodeCloner:getOwnerCallbackControlEvents(),"CCArray")
        local i = 1
        for i = 1,ownerCallbackNames:count() do
            local callbackName =  tolua.cast(ownerCallbackNames:objectAtIndex(i - 1),"CCString")
            local callbackNode =  tolua.cast(ownerCallbackNodes:objectAtIndex(i - 1),"CCNode")

            callbackName = callbackName:getCString()
            if "function" == type(owner[callbackName]) then
                local integerValue = tolua.cast(ownerCallbackControlEvents:objectAtIndex(i - 1),"CCInteger")
                if nil ~= integerValue then
                    ccbNodeCloner:setCallback(callbackNode, owner[callbackName], integerValue:getValue())
                    table.insert(eventNodes, callbackNode)
                end
            else
                print("Warning: Cannot find owner's lua function:" .. ":" .. callbackName .. " for ownerVar selector")
            end

        end

        --Variables
        local ownerOutletNames =  tolua.cast(ccbNodeCloner:getOwnerOutletNames(),"CCArray")
        local ownerOutletNodes =  tolua.cast(ccbNodeCloner:getOwnerOutletNodes(),"CCArray")
        for i = 1, ownerOutletNames:count() do
            local outletName = tolua.cast(ownerOutletNames:objectAtIndex(i - 1),"CCString")
            local outletNode = tolua.cast(ownerOutletNodes:objectAtIndex(i - 1),"CCNode")
            owner[outletName:getCString()] = outletNode
        end
    end
    if newNode then
        newNode.___eventNodes = eventNodes
    end

    return newNode
end

function CCBuilderReaderLoad(strFilePath,proxy,owner)
    if nil == proxy then
        return
    end

    local ccbReader = proxy:createCCBReader()
    local node      =  QCCBDataCache:sharedCCBDataCache():loadCCBFile(strFilePath, ccbReader)
    local rootName  = ""

    local buttonGroups = {}
    local eventNodes = {}

    if nil ~= owner then
        --Callbacks
        local ownerCallbackNames = tolua.cast(ccbReader:getOwnerCallbackNames(),"CCArray")
        local ownerCallbackNodes = tolua.cast(ccbReader:getOwnerCallbackNodes(),"CCArray")
        local ownerCallbackControlEvents = tolua.cast(ccbReader:getOwnerCallbackControlEvents(),"CCArray")
        local i = 1
        for i = 1,ownerCallbackNames:count() do
            local callbackName =  tolua.cast(ownerCallbackNames:objectAtIndex(i - 1),"CCString")
            local callbackNode =  tolua.cast(ownerCallbackNodes:objectAtIndex(i - 1),"CCNode")

            callbackName = callbackName:getCString()
            if "function" == type(owner[callbackName]) then
                local integerValue = tolua.cast(ownerCallbackControlEvents:objectAtIndex(i - 1),"CCInteger")
                proxy:setCallback(callbackNode, owner[callbackName], integerValue:getValue())
                table.insert(eventNodes, callbackNode)
            elseif "table" == type(owner[callbackName]) and "function" == type(owner[callbackName].callback) then
                local obj = owner[callbackName]
                local integerValue = tolua.cast(ownerCallbackControlEvents:objectAtIndex(i - 1),"CCInteger")
                if nil ~= integerValue then
                    if not obj.isGroup then
                        proxy:setCallback(callbackNode, obj.callback, integerValue:getValue())
                        table.insert(eventNodes, callbackNode)
                    else
                        local group = buttonGroups[obj.callback]
                        if group == nil then
                            group = {integerValue = integerValue, mainButtonName = obj.isGroup}
                            buttonGroups[obj.callback] = group
                        end
                        group[#group + 1] = tolua.cast(ownerCallbackNodes:objectAtIndex(i - 1), "CCControlButton")
                    end
                end
            else
                print("Warning: Cannot find owner's lua function:" .. ":" .. callbackName .. " for ownerVar selector")
            end

        end

        for callback, group in pairs(buttonGroups) do
            local function _callback(event)
                if event == tostring(CCControlEventTouchDown) or event == tostring(CCControlEventTouchDragInside) then
                    for _, button in ipairs(group) do
                        button:setHighlighted(true)
                    end
                elseif event == tostring(CCControlEventTouchDragOutside) then
                    for _, button in ipairs(group) do
                        button:setHighlighted(false)
                    end
                else
                    for _, button in ipairs(group) do
                        button:setHighlighted(false)
                    end
                    callback()
                end
            end
            for _, button in ipairs(group) do
                proxy:setCallback(button, _callback, group.integerValue:getValue())
                table.insert(eventNodes, button)
            end
        end

        --Variables
        local ownerOutletNames =  tolua.cast(ccbReader:getOwnerOutletNames(),"CCArray")
        local ownerOutletNodes =  tolua.cast(ccbReader:getOwnerOutletNodes(),"CCArray")
        for i = 1, ownerOutletNames:count() do
            local outletName = tolua.cast(ownerOutletNames:objectAtIndex(i - 1),"CCString")
            local outletNode = tolua.cast(ownerOutletNodes:objectAtIndex(i - 1),"CCNode")
            owner[outletName:getCString()] = outletNode
        end

        -- button group main button
        for _, group in pairs(buttonGroups) do
            local mainButton = owner[group.mainButtonName]
            if mainButton then
                local _setEnable = mainButton.setEnabled
                function mainButton:setEnabled( ... )
                    for _, button in ipairs(group) do
                        _setEnable(button, ...)
                    end
                end
            end
        end
    end

    local nodesWithAnimationManagers = tolua.cast(ccbReader:getNodesWithAnimationManagers(),"CCArray")
    local animationManagersForNodes  = tolua.cast(ccbReader:getAnimationManagersForNodes(),"CCArray")

    if nodesWithAnimationManagers ~= nil then
        for i = 1 , nodesWithAnimationManagers:count() do
            local innerNode = tolua.cast(nodesWithAnimationManagers:objectAtIndex(i - 1),"CCNode")
            local animationManager = tolua.cast(animationManagersForNodes:objectAtIndex(i - 1), "CCBAnimationManager")
            local documentControllerName = animationManager:getDocumentControllerName()
            if "" == documentControllerName then

            end
            if nil ~=  ccb[documentControllerName] then
                ccb[documentControllerName]["mAnimationManager"] = animationManager
            end

            --Callbacks
            local documentCallbackNames = tolua.cast(animationManager:getDocumentCallbackNames(),"CCArray")
            local documentCallbackNodes = tolua.cast(animationManager:getDocumentCallbackNodes(),"CCArray")
            local documentCallbackControlEvents = tolua.cast(animationManager:getDocumentCallbackControlEvents(),"CCArray")

            for i = 1,documentCallbackNames:count() do
                local callbackName = tolua.cast(documentCallbackNames:objectAtIndex(i - 1),"CCString")
                local callbackNode = tolua.cast(documentCallbackNodes:objectAtIndex(i - 1),"CCNode")
                if "" ~= documentControllerName and nil ~= ccb[documentControllerName] then
                    local cbName = callbackName:getCString()
                    if "function" == type(ccb[documentControllerName][cbName]) then
                        local integerValue = tolua.cast(documentCallbackControlEvents:objectAtIndex(i - 1),"CCInteger")
                        if nil ~= integerValue then
                            proxy:setCallback(callbackNode, ccb[documentControllerName][cbName], integerValue:getValue())
                            table.insert(eventNodes, callbackNode)
                        end
                    else
                        print("Warning: Cannot found lua function [" .. documentControllerName .. ":" .. callbackName:getCString() .. "] for docRoot selector")
                    end
                end
            end

            --Variables
            local documentOutletNames =  tolua.cast(animationManager:getDocumentOutletNames(),"CCArray")
            local documentOutletNodes = tolua.cast(animationManager:getDocumentOutletNodes(),"CCArray")

            for i = 1, documentOutletNames:count() do
                local outletName = tolua.cast(documentOutletNames:objectAtIndex(i - 1),"CCString")
                local outletNode = tolua.cast(documentOutletNodes:objectAtIndex(i - 1),"CCNode")

                if nil ~= ccb[documentControllerName] then
                    ccb[documentControllerName][outletName:getCString()] = tolua.cast(outletNode, proxy:getNodeTypeName(outletNode))
                end
            end

            --Setup timeline callbacks
            local keyframeCallbacks = animationManager:getKeyframeCallbacks()

            for i = 1 , keyframeCallbacks:count() do
                local callbackCombine = tolua.cast(keyframeCallbacks:objectAtIndex(i - 1),"CCString"):getCString()
                local beignIndex,endIndex = string.find(callbackCombine,":")
                local callbackType    = tonumber(string.sub(callbackCombine,1,beignIndex - 1))
                local callbackName    = string.sub(callbackCombine,endIndex + 1, -1)
                --Document callback

                if 1 == callbackType and nil ~= ccb[documentControllerName] then
                    local callfunc = CCCallFunc:create(ccb[documentControllerName][callbackName])
                    animationManager:setCallFuncForLuaCallbackNamed(callfunc, callbackCombine)
                elseif 2 == callbackType and nil ~= owner then --Owner callback
                    local callfunc = CCCallFunc:create(owner[callbackName])
                    animationManager:setCallFuncForLuaCallbackNamed(callfunc, callbackCombine)
                end
            end
            --start animation
            local autoPlaySeqId = animationManager:getAutoPlaySequenceId()
            if -1 ~= autoPlaySeqId then
                animationManager:runAnimationsForSequenceIdTweenDuration(autoPlaySeqId, 0)
            end
        end
    end
    if node then
        node.___eventNodes = eventNodes
    end

    return node
end

function CCBReaderLoad(strFilePath,proxy,bSetOwner,strOwnerName)
    print("CCBReaderLoad was deprecated, Please use CCBuilderReaderLoad(strFilePath,proxy,owner) instead.In the newest CocosBuilderTest,you can find out the usage of this new function")
    return
end

function CCBuilderLoadLua(file, owner)
    if file == nil then
        return nil
    end

    -- printInfo("load ccb file:" .. file)
    -- printInfo("owner:")
    -- printTable(owner)

    local ccblObject = ccblDataCache[file]
    if ccblObject == nil then
        local path = singletons.fileUtils:fullPathForFilename(file)
        local content = singletons.fileUtils:getFileData(path)
        local func = loadstring(content)
        ccblObject = func()
        ccblDataCache[file] = ccblObject
    end

    local instance = ccblObject:new()
    instance:create(nil, owner)

    return instance.rootNode
end

if ENABLE_CCB_TO_LUA then

    local _CCBuilderReaderLoad = CCBuilderReaderLoad
    function CCBuilderReaderLoad(strFilePath,proxy,owner)
        if strFilePath == nil then
            return
        end

        local luaFilePath = string.gsub(strFilePath, "ccbi", "lua")
        return CCBuilderLoadLua(luaFilePath, owner)
    end

    local _CCBProxy_create = CCBProxy.create
    function CCBProxy:create()
        return 
    end
    
end
