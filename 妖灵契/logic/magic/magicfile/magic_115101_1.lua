module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={
			args={
				action_name=[[runWar]],
				action_time=0.49,
				end_frame=19,
				excutor=[[atkobj]],
				start_frame=0,
			},
			func_name=[[PlayAction]],
			start_time=0,
		},
		[2]={
			args={
				begin_type=[[current]],
				calc_face=true,
				ease_type=[[Linear]],
				end_relative={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=1.7,},
				end_type=[[end_relative]],
				excutor=[[atkobj]],
				look_at_pos=true,
				move_time=0.2,
				move_type=[[line]],
			},
			func_name=[[Move]],
			start_time=0,
		},
		[3]={
			args={action_name=[[attack1]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0,
		},
		[4]={args={alive_time=0.5,},func_name=[[Name]],start_time=0,},
		[5]={
			args={sound_path=[[Magic/sound_magic_115101_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0,
		},
		[6]={args={},func_name=[[MagcAnimStart]],start_time=0.2,},
		[7]={
			args={
				alive_time=1,
				bind_type=[[pos]],
				body_pos=[[foot]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_1151/Prefabs/magic_eff_115101_att.prefab]],
					preload=true,
				},
				excutor=[[atkobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.3,
		},
		[8]={
			args={
				alive_time=0.15,
				ease_hide_time=0.05,
				ease_show_time=0.05,
				excutor=[[vicobj]],
				mat_path=[[Material/effect_Fresnel_Green01.mat]],
			},
			func_name=[[ActorMaterial]],
			start_time=0.45,
		},
		[9]={
			args={
				consider_hight=false,
				damage_follow=true,
				face_atk=true,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=0.45,
		},
		[10]={
			args={
				alive_time=1,
				bind_type=[[pos]],
				body_pos=[[waist]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_404/Prefabs/magic_eff_40401_hit.prefab]],
					preload=true,
				},
				excutor=[[vicobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.45,
		},
		[11]={args={},func_name=[[MagcAnimEnd]],start_time=0.8,},
		[12]={args={},func_name=[[End]],start_time=1,},
	},
	group_cmds={},
	magic_anim_end_time=0.8,
	magic_anim_start_time=0.2,
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_1151/Prefabs/magic_eff_115101_att.prefab]],
		[2]=[[Effect/Magic/magic_eff_404/Prefabs/magic_eff_40401_hit.prefab]],
	},
	run_env=[[war]],
	type=1,
	wait_goback=true,
}
