function [residual, g1, g2, g3] = ireland_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(10, 1);
T30 = params(1)^2+params(2)*params(6)^2;
lhs =y(7);
rhs =params(10)*y(1)+x(it_, 1);
residual(1)= lhs-rhs;
lhs =(params(1)-params(2)*params(6))*(params(1)-params(6))*y(9);
rhs =params(1)*params(6)*y(2)-T30*y(8)+params(1)*params(2)*params(6)*y(17)+y(7)*(params(1)-params(6))*(params(1)-params(10)*params(2)*params(6))-params(1)*params(6)*y(14);
residual(2)= lhs-rhs;
lhs =y(9);
rhs =y(10)+y(18)-y(19);
residual(3)= lhs-rhs;
lhs =y(12);
rhs =params(11)*y(5)+x(it_, 2);
residual(4)= lhs-rhs;
lhs =y(14);
rhs =x(it_, 3);
residual(5)= lhs-rhs;
lhs =(1+params(2)*params(7))*y(11);
rhs =y(12)+params(7)*y(4)+params(2)*y(19)-y(9)*params(3)+y(7)*params(3);
residual(6)= lhs-rhs;
lhs =y(10)-y(3);
rhs =y(11)*params(8)+params(9)*y(13)+x(it_, 4);
residual(7)= lhs-rhs;
lhs =y(13);
rhs =y(14)+y(8)-y(2);
residual(8)= lhs-rhs;
lhs =0;
rhs =params(1)*params(6)*y(6)-T30*y(15)+params(1)*params(2)*params(6)*y(20)+y(7)*params(2)*params(6)*(params(1)-params(6))*(1-params(10))-params(1)*params(6)*y(14);
residual(9)= lhs-rhs;
lhs =y(16);
rhs =y(8)-y(15);
residual(10)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(10, 24);

  %
  % Jacobian matrix
  %

  g1(1,1)=(-params(10));
  g1(1,7)=1;
  g1(1,21)=(-1);
  g1(2,7)=(-((params(1)-params(6))*(params(1)-params(10)*params(2)*params(6))));
  g1(2,2)=(-(params(1)*params(6)));
  g1(2,8)=T30;
  g1(2,17)=(-(params(1)*params(2)*params(6)));
  g1(2,9)=(params(1)-params(2)*params(6))*(params(1)-params(6));
  g1(2,14)=params(1)*params(6);
  g1(3,9)=1;
  g1(3,18)=(-1);
  g1(3,10)=(-1);
  g1(3,19)=1;
  g1(4,5)=(-params(11));
  g1(4,12)=1;
  g1(4,22)=(-1);
  g1(5,14)=1;
  g1(5,23)=(-1);
  g1(6,7)=(-params(3));
  g1(6,9)=params(3);
  g1(6,4)=(-params(7));
  g1(6,11)=1+params(2)*params(7);
  g1(6,19)=(-params(2));
  g1(6,12)=(-1);
  g1(7,3)=(-1);
  g1(7,10)=1;
  g1(7,11)=(-params(8));
  g1(7,13)=(-params(9));
  g1(7,24)=(-1);
  g1(8,2)=1;
  g1(8,8)=(-1);
  g1(8,13)=1;
  g1(8,14)=(-1);
  g1(9,7)=(-(params(2)*params(6)*(params(1)-params(6))*(1-params(10))));
  g1(9,14)=params(1)*params(6);
  g1(9,6)=(-(params(1)*params(6)));
  g1(9,15)=T30;
  g1(9,20)=(-(params(1)*params(2)*params(6)));
  g1(10,8)=(-1);
  g1(10,15)=1;
  g1(10,16)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],10,576);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],10,13824);
end
end
