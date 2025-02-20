module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={
			args={
				alive_time=1.6,
				bind_idx=100,
				bind_type=[[node]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30501_Prop1.prefab]],
					preload=true,
				},
				excutor=[[atkobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0,
		},
		[2]={
			args={action_name=[[attack2]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0,
		},
		[3]={
			args={
				alive_time=1,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30502_att.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[atk]],depth=0,relative_angle=0,relative_dis=0,},
				excutor=[[atkobj]],
			},
			func_name=[[StandEffect]],
			start_time=0,
		},
		[4]={
			args={sound_path=[[Magic/sound_magic_30502_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0.2,
		},
		[5]={
			args={
				alive_time=1,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30502_hit.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=1.2,},
				excutor=[[atkobj]],
			},
			func_name=[[StandEffect]],
			start_time=0.95,
		},
		[6]={
			args={
				begin_type=[[current]],
				calc_face=true,
				ease_type=[[Linear]],
				end_relative={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=1.5,},
				end_type=[[end_relative]],
				excutor=[[atkobj]],
				look_at_pos=true,
				move_time=0.05,
				move_type=[[line]],
			},
			func_name=[[Move]],
			start_time=1,
		},
		[7]={
			args={
				down_time=0.6,
				excutor=[[vicobj]],
				hit_speed=8,
				hit_time=0.2,
				lie_time=0.15,
				up_speed=1.3,
				up_time=1,
			},
			func_name=[[FloatHit]],
			start_time=1.1,
		},
		[8]={
			args={shake_dis=0.08,shake_rate=20,shake_time=0.7,},
			func_name=[[ShakeScreen]],
			start_time=1.1,
		},
		[9]={
			args={
				consider_hight=false,
				damage_follow=true,
				face_atk=false,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=1.11,
		},
		[10]={
			args={
				alive_time=2,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30502_hit02.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=0,},
				excutor=[[vicobj]],
			},
			func_name=[[StandEffect]],
			start_time=1.15,
		},
		[11]={
			args={
				consider_hight=true,
				damage_follow=true,
				face_atk=false,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=1.15,
		},
		[12]={
			args={
				consider_hight=true,
				damage_follow=true,
				face_atk=false,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=1.3,
		},
		[13]={args={},func_name=[[End]],start_time=2,},
	},
	group_cmds={},
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30501_Prop1.prefab]],
		[2]=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30502_att.prefab]],
		[3]=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30502_hit.prefab]],
		[4]=[[Effect/Magic/magic_eff_305/Prefabs/magic_eff_30502_hit02.prefab]],
	},
	run_env=[[war]],
	type=1,
	wait_goback=true,
}
