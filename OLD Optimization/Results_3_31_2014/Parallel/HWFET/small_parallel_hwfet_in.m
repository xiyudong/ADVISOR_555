% small_parallel_hwfet_in.m  ADVISOR 2003-00-r0116 input file created: 29-Mar-2014 14:16:26

global vinf 

vinf.name='small_parallel_hwfet_in';
vinf.drivetrain.name='parallel';
vinf.fuel_converter.name='FC_SI41_emis';
vinf.fuel_converter.ver='ic';
vinf.fuel_converter.type='si';
vinf.torque_coupling.name='TC_DUMMY';
vinf.motor_controller.name='MC_PM58';
vinf.energy_storage.name='ESS_LI7_temp';
vinf.energy_storage.ver='rint';
vinf.energy_storage.type='li';
vinf.transmission.name='TX_5SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_SMCAR';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_SMCAR';
vinf.exhaust_aftertreat.name='EX_SI';
vinf.powertrain_control.name='PTC_PAR';
vinf.powertrain_control.ver='par';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HYBRID';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='fc_trq_scale';
vinf.variables.value(1)=1.0446;
vinf.variables.default(1)=1;
vinf.variables.name{2}='fc_spd_scale';
vinf.variables.value(2)=1;
vinf.variables.default(2)=1;
vinf.variables.name{3}='ess_module_num';
vinf.variables.value(3)=20;
vinf.variables.default(3)=25;
vinf.variables.name{4}='mc_trq_scale';
vinf.variables.value(4)=0.49833;
vinf.variables.default(4)=1;
vinf.variables.name{5}='mc_spd_scale';
vinf.variables.value(5)=1;
vinf.variables.default(5)=1;
vinf.variables.name{6}='fd_ratio';
vinf.variables.value(6)=1.1905;
vinf.variables.default(6)=1;
vinf.variables.name{7}='acc_elec_pwr';
vinf.variables.value(7)=3200;
vinf.variables.default(7)=3200;
vinf.variables.name{8}='cs_min_trq_frac';
vinf.variables.value(8)=0.42778;
vinf.variables.default(8)=0.4;
vinf.variables.name{9}='cs_off_trq_frac';
vinf.variables.value(9)=0.3;
vinf.variables.default(9)=0;
vinf.variables.name{10}='cs_electric_launch_spd_lo';
vinf.variables.value(10)=2.5;
vinf.variables.default(10)=0;
vinf.variables.name{11}='cs_electric_launch_spd_hi';
vinf.variables.value(11)=26.6667;
vinf.variables.default(11)=0;
vinf.variables.name{12}='cs_charge_deplete_bool';
vinf.variables.value(12)=0.5;
vinf.variables.default(12)=0;
vinf.variables.name{13}='ess_cap_scale';
vinf.variables.value(13)=1.3333;
vinf.variables.default(13)=1;
vinf.variables.name{14}='cs_charge_trq';
vinf.variables.value(14)=8.4722;
vinf.variables.default(14)=15.25;
