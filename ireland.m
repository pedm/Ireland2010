%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'ireland';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('ireland.log');
M_.exo_names = 'epsilon_a';
M_.exo_names_tex = '{\epsilon_a}';
M_.exo_names_long = 'epsilon_a';
M_.exo_names = char(M_.exo_names, 'epsilon_e');
M_.exo_names_tex = char(M_.exo_names_tex, '{\epsilon_e}');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_e');
M_.exo_names = char(M_.exo_names, 'epsilon_z');
M_.exo_names_tex = char(M_.exo_names_tex, '{\epsilon_z}');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_z');
M_.exo_names = char(M_.exo_names, 'epsilon_r');
M_.exo_names_tex = char(M_.exo_names_tex, '{\epsilon_r}');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_r');
M_.endo_names = 'a';
M_.endo_names_tex = 'a';
M_.endo_names_long = 'a';
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'lambda');
M_.endo_names_tex = char(M_.endo_names_tex, '\lambda');
M_.endo_names_long = char(M_.endo_names_long, 'lambda');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, '\pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'e');
M_.endo_names_tex = char(M_.endo_names_tex, 'e');
M_.endo_names_long = char(M_.endo_names_long, 'e');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'zhat');
M_.endo_names_tex = char(M_.endo_names_tex, 'z^{hat}');
M_.endo_names_long = char(M_.endo_names_long, 'zhat');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names_long = char(M_.endo_names_long, 'q');
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.param_names = 'z';
M_.param_names_tex = '{z}';
M_.param_names_long = 'z';
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, '{\beta}');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'psi');
M_.param_names_tex = char(M_.param_names_tex, '{\psi}');
M_.param_names_long = char(M_.param_names_long, 'psi');
M_.param_names = char(M_.param_names, 'rhor');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_r}');
M_.param_names_long = char(M_.param_names_long, 'rhor');
M_.param_names = char(M_.param_names, 'rhox');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_x}');
M_.param_names_long = char(M_.param_names_long, 'rhox');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, '{\gamma}');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, '{\alpha}');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'rhop');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_\pi}');
M_.param_names_long = char(M_.param_names_long, 'rhop');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_g}');
M_.param_names_long = char(M_.param_names_long, 'rhog');
M_.param_names = char(M_.param_names, 'rhoa');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_a}');
M_.param_names_long = char(M_.param_names_long, 'rhoa');
M_.param_names = char(M_.param_names, 'rhoe');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_e}');
M_.param_names_long = char(M_.param_names_long, 'rhoe');
M_.param_names = char(M_.param_names, 'siga');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_a}');
M_.param_names_long = char(M_.param_names_long, 'siga');
M_.param_names = char(M_.param_names, 'sige');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_e}');
M_.param_names_long = char(M_.param_names_long, 'sige');
M_.param_names = char(M_.param_names, 'sigz');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_z}');
M_.param_names_long = char(M_.param_names_long, 'sigz');
M_.param_names = char(M_.param_names, 'sigr');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_r}');
M_.param_names_long = char(M_.param_names_long, 'sigr');
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 10;
M_.param_nbr = 15;
M_.orig_endo_nbr = 10;
M_.aux_vars = [];
options_.varobs = [];
options_.varobs = 'g';
options_.varobs = char(options_.varobs, 'pi');
options_.varobs = char(options_.varobs, 'r');
options_.varobs_id = [ 7 5 4  ];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('ireland_static');
erase_compiled_function('ireland_dynamic');
M_.lead_lag_incidence = [
 1 7 0;
 2 8 17;
 0 9 18;
 3 10 0;
 4 11 19;
 5 12 0;
 0 13 0;
 0 14 0;
 6 15 20;
 0 16 0;]';
M_.nstatic = 3;
M_.nfwrd   = 1;
M_.npred   = 3;
M_.nboth   = 3;
M_.nsfwrd   = 4;
M_.nspred   = 6;
M_.ndynamic   = 7;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(10, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(15, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 41;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
close all;
estimatemodel = 1;
M_.params( 1 ) = 1.0046;
z = M_.params( 1 );
M_.params( 2 ) = 0.9987;
beta = M_.params( 2 );
M_.params( 3 ) = 0.10;
psi = M_.params( 3 );
M_.params( 4 ) = 1;
rhor = M_.params( 4 );
M_.params( 5 ) = 0;
rhox = M_.params( 5 );
M_.params( 6 ) = 0.3904;
gamma = M_.params( 6 );
M_.params( 7 ) = 0.0000;
alpha = M_.params( 7 );
M_.params( 8 ) = 0.4153;
rhop = M_.params( 8 );
M_.params( 9 ) = 0.1270;
rhog = M_.params( 9 );
M_.params( 10 ) = 0.9797;
rhoa = M_.params( 10 );
M_.params( 11 ) = 0.0000;
rhoe = M_.params( 11 );
M_.params( 12 ) = 0.0868;
siga = M_.params( 12 );
M_.params( 13 ) = 0.0017;
sige = M_.params( 13 );
M_.params( 14 ) = 0.0095;
sigz = M_.params( 14 );
M_.params( 15 ) = 0.0014;
sigr = M_.params( 15 );
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 1 ) = 0;
oo_.steady_state( 2 ) = 0;
oo_.steady_state( 3 ) = 0;
oo_.steady_state( 4 ) = 0;
oo_.steady_state( 5 ) = 0;
oo_.steady_state( 6 ) = 0;
oo_.steady_state( 7 ) = 0;
oo_.steady_state( 8 ) = 0;
oo_.steady_state( 9 ) = 0;
oo_.steady_state( 10 ) = 0;
if M_.exo_nbr > 0;
	oo_.exo_simul = [ones(M_.maximum_lag,1)*oo_.exo_steady_state'];
end;
if M_.exo_det_nbr > 0;
	oo_.exo_det_simul = [ones(M_.maximum_lag,1)*oo_.exo_det_steady_state'];
end;
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0868)^2;
M_.Sigma_e(2, 2) = (0.0017)^2;
M_.Sigma_e(3, 3) = (0.0095)^2;
M_.Sigma_e(4, 4) = (0.0014)^2;
options_.solve_algo = 1;
options_.steady.maxit = 50000;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
if estimatemodel == 1
global estim_params_
estim_params_.var_exo = [];
estim_params_.var_endo = [];
estim_params_.corrx = [];
estim_params_.corrn = [];
estim_params_.param_vals = [];
estim_params_.param_vals = [estim_params_.param_vals; 6, 0.5, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 7, 0.5, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 8, 0.25, (-Inf), Inf, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 9, 0.05, (-Inf), Inf, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 10, 0.75, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 11, 0.25, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 1, 0.01, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 2, 0.001, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 3, 0.01, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 4, 0.0025, 0, 1, 0, NaN, NaN, NaN, NaN, NaN ];
options_.custom_penalty = 0;
options_.mode_compute = 1;
options_.prefilter = 0;
options_.datafile = 'IrelandData';
options_.optim_opt = '''Display'',''iter'',''LargeScale'',''off'',''MaxFunEvals'',10000,''MaxIter'',10000';
options_.nobs = 108;
options_.order = 1;
var_list_=[];
dynare_estimation(var_list_);
end
etahat = [oo_.SmoothedShocks.epsilon_a, oo_.SmoothedShocks.epsilon_e, oo_.SmoothedShocks.epsilon_z, oo_.SmoothedShocks.epsilon_r]';
cov(etahat')
V=corrcoef(etahat')
DegreeContemporaneousCC = norm(V-eye(4))
save('ireland_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('ireland_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('ireland_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('ireland_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('ireland_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
