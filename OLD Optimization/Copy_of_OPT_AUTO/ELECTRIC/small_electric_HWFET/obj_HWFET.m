function obj=obj_HWFET(x,varargin)

% initialize
error=0;
obj=0;

% update parameter settings
input.modify.param=varargin{1}; % parameter names are stored in the first optional argument
input.modify.value=num2cell(x); % assign corresponding values
[error,resp]=adv_no_gui('modify',input);

% run city/hwy test procedure
if ~error
%    input.procedure.param={'test.name'};
%    input.procedure.value={'TEST_CITY_HWY'};
%    [error,resp]=adv_no_gui('test_procedure',input);
   
   input.cycle.param = {'cycle.name','cycle.soc'}
   input.cycle.value = {'CYC_HWFET','off'}
   [error,resp] = adv_no_gui('drive_cycle', input)
end

% assign objective value
if ~error
obj= -0.7*resp.cycle.mpgge + 0.1*resp.cycle.co_gpm + 0.1*resp.cycle.hc_gpm + 0.1*resp.cycle.nox_gpm; % -1* to maximize objective
%  obj=-1*resp.procedure.mpgge; % -1* to maximize objective

end

% assign constraint value
if ~error
   assignin('base','con',[max(resp.cycle.delta_trace)])
end

return
