--
-- Author: Your Name
-- Date: 2016-06-12 16:48:20
--
--阵容和副本新手引导

local QTutorialStage = import("..QTutorialStage")
local QTutorialStageHeroYwd = class("QTutorialStageHeroYwd", QTutorialStage)

local QTutorialPhase01HeroYwd = import(".QTutorialPhase01HeroYwd")

function QTutorialStageHeroYwd:ctro()
  QTutorialStageHeroYwd.super.ctro(self)
  self._enableTouch = false
end

function QTutorialStageHeroYwd:_createTouchNode()
  local touchNode = CCNode:create()
  touchNode:setCascadeBoundingBox(CCRect(0.0, 0.0, display.width, display.height))
  touchNode:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
  touchNode:setTouchSwallowEnabled(true)
  app.tutorialNode:addChild(touchNode)
  self._touchNode = touchNode
end

function QTutorialStageHeroYwd:enableTouch(func)
  self._enableTouch = true
  self._touchCallBack = func
end

function QTutorialStageHeroYwd:displayTouch()
  self._enableTouch = true
  self._touchCallBack = nil
end

function QTutorialStageHeroYwd:_createPhases()
  table.insert(self._phases, QTutorialPhase01HeroYwd.new(self))
  
  self._phaseCount = table.nums(self._phases)
end

function QTutorialStageHeroYwd:start()
  self:_createTouchNode()
  self._touchNode:setTouchEnabled(true)
  self._touchNode:addNodeEventListener(cc.NODE_TOUCH_EVENT, handler(self, self._onTouch))
  QTutorialStageHeroYwd.super.start(self)
end

function QTutorialStageHeroYwd:ended()
    if self._touchNode ~= nil then
        self._touchNode:setTouchEnabled(false)
        self._touchNode:removeFromParent()
        self._touchNode = nil
    end
end

function QTutorialStageHeroYwd:_onTouch(event)
  if self._enableTouch == true and self._touchCallBack ~= nil then
    return self._touchCallBack(event)
  elseif event.name == "began" then
    return true
  end
end

return QTutorialStageHeroYwd