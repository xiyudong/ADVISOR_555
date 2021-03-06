% Script to exercise the DIRECT optimization Algorithm with ADVISOR.
%
% 1) initialize workspace
% 2) define the problem
% 3) run optimizer
% 4) save results
%

% initiate timer
tic

% initialize the workspace
if 1% 1=initialize, 0=don't initial - for continuation runs
 
% %Pass the small series vehicle
% input.init.saved_veh_file='sm_ser_li_ion_auto_in';
% [a,b]=adv_no_gui('initialize',input);


input.init.saved_veh_file='SERIES_defaults_in';
[error_code,resp]=adv_no_gui('initialize',input);

%Modify the vehicle Mass
input.modify.param = {'veh_mass'};
input.modify.value = {1054};
[error_code,resp] = adv_no_gui('modify',input)


end

dv_names={'fc_pwr_scale'};
resp_names={'MPGGE_STEP_small_series'};
con_names={'delta_soc','delta_trace','vinf.accel_test.results.time(1)','vinf.accel_test.results.time(2)','vinf.accel_test.results.time(3)','vinf.grade_test.results.grade'};

% define the problem
cont_bool=0;
p_f='obj_STEP';
p_c='con_STEP';

% fc_pwr_scale   mc_trq_scale   ess_module_num   ess_cap_scale   cs_hi_soc   cs_lo_soc    cs_max_pwr   cs_min_pwr    cs_min_off_time
x_L=[0.5]';
x_U=[1.5]';

A=[];
b_L=[];
b_U=[];

%  delta_soc   delta_trace   vinf.accel_test.results.time(1)    vinf.accel_test.results.time(2)   vinf.accel_test.results.time(3)   vinf.grade_test.results.grade
c_L=[   0;         0;                    0;                                  0;                                  0;                            5];
c_U=[ 0.005;       2;                   12;                                  7;                                 31;                            6];

% %  delta_soc   delta_trace   vinf.accel_test.results.time(1)    vinf.accel_test.results.time(2)   vinf.accel_test.results.time(3)   vinf.grade_test.results.grade
% c_L=[   0;         0;                    0;                                  0;                                  0;                           6.5];
% c_U=[ 0.005;       2;                  11.2;                               4.4;                                 20;                           100];



I=[];
PriLev=2;
MaxEval=1000;
MaxIter= 2;
GLOBAL.epsilon=1e-4;
prev_results_filename='small_series_STEP_results';

if cont_bool==1
   eval(['load(''',prev_results_filename,''')']) 
   GLOBAL = small_series_STEP_optimization.GLOBAL;
   GLOBAL.MaxEval = MaxEval;
   GLOBAL.MaxIter = MaxIter;
else
   GLOBAL.MaxEval = MaxEval;
   GLOBAL.MaxIter = MaxIter;
end

plot_info.var_label=dv_names;
plot_info.var_ub=num2cell(x_U);
plot_info.var_lb=num2cell(x_L);
plot_info.con_label=con_names;
plot_info.con_ub=num2cell(c_U);
plot_info.con_lb=num2cell(c_L);
plot_info.fun_label=resp_names;

% start the optimization
small_series_STEP_optimization = gclSolve(p_f, p_c, x_L, x_U, A, b_L, b_U, c_L, c_U, I, GLOBAL, PriLev, plot_info, dv_names, resp_names, con_names);

% save the results
eval(['save(''',prev_results_filename,''',','''small_series_STEP_optimization'');']) 

% save the vehicle
input.save.filename='small_series_STEP';
[a,b]=adv_no_gui('save_vehicle',input);

% plot the optimization results
PlotOptimResults(small_series_STEP_optimization.GLOBAL.f_min_hist, plot_info)

% end timer
toc