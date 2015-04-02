% small_series_ftp_in.m  ADVISOR 2003-00-r0116 input file created: 21-Feb-2014 18:11:33

global vinf 

vinf.name='small_series_ftp_in';
vinf.drivetrain.name='series';
vinf.fuel_converter.name='FC_SI41_emis';
vinf.fuel_converter.ver='ic';
vinf.fuel_converter.type='si';
vinf.generator.name='GC_ETA95';
vinf.generator.ver='reg';
vinf.generator.type='reg';
vinf.motor_controller.name='MC_AC75';
vinf.energy_storage.name='ESS_LI7_temp';
vinf.energy_storage.ver='rint';
vinf.energy_storage.type='li';
vinf.transmission.name='TX_1SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_SMCAR';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_SMCAR';
vinf.exhaust_aftertreat.name='EX_SI';
vinf.powertrain_control.name='PTC_SER';
vinf.powertrain_control.ver='ser';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HYBRID';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='gc_trq_scale';
vinf.variables.value(1)=0.306;
vinf.variables.default(1)=1;
vinf.variables.name{2}='veh_mass';
vinf.variables.value(2)=1054;
vinf.variables.default(2)=1126;
vinf.variables.name{3}='gc_spd_scale';
vinf.variables.value(3)=0.857;
vinf.variables.default(3)=1;
vinf.variables.name{4}='ess_module_num';
vinf.variables.value(4)=35.8333;
vinf.variables.default(4)=0;
vinf.variables.name{5}='fd_ratio';
vinf.variables.value(5)=1.0476;
vinf.variables.default(5)=1;
vinf.variables.name{6}='fc_pwr_scale';
vinf.variables.value(6)=1.1667;
vinf.variables.default(6)=0.75597;
vinf.variables.name{7}='cs_hi_soc';
vinf.variables.value(7)=0.775;
vinf.variables.default(7)=0.8;
vinf.variables.name{8}='cs_max_pwr';
vinf.variables.value(8)=34;
vinf.variables.default(8)=20503.515;
vinf.variables.name{9}='cs_min_pwr';
vinf.variables.value(9)=12.5;
vinf.variables.default(9)=20503.515;
vinf.variables.name{10}='cs_min_off_time';
vinf.variables.value(10)=505;
vinf.variables.default(10)=Inf;
vinf.variables.name{11}='fc_trq_scale';
vinf.variables.value(11)=1.1667;
vinf.variables.default(11)=1;
vinf.variables.name{12}='mc_trq_scale';
vinf.variables.value(12)=1.1667;
vinf.variables.default(12)=1;
vinf.variables.name{13}='ess_cap_scale';
vinf.variables.value(13)=1;
vinf.variables.default(13)=1;
vinf.variables.name{14}='cs_lo_soc';
vinf.variables.value(14)=0.4;
vinf.variables.default(14)=0.4;