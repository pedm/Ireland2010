function [residual, g1, g2] = ireland_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 10, 1);

%
% Model equations
%

T29 = params(1)^2+params(2)*params(6)^2;
lhs =y(1);
rhs =y(1)*params(10)+x(1);
residual(1)= lhs-rhs;
lhs =(params(1)-params(2)*params(6))*(params(1)-params(6))*y(3);
rhs =params(1)*params(6)*y(2)-y(2)*T29+y(2)*params(1)*params(2)*params(6)+y(1)*(params(1)-params(6))*(params(1)-params(10)*params(2)*params(6))-params(1)*params(6)*y(8);
residual(2)= lhs-rhs;
lhs =y(3);
rhs =y(3)+y(4)-y(5);
residual(3)= lhs-rhs;
lhs =y(6);
rhs =y(6)*params(11)+x(2);
residual(4)= lhs-rhs;
lhs =y(8);
rhs =x(3);
residual(5)= lhs-rhs;
lhs =y(5)*(1+params(2)*params(7));
rhs =y(6)+y(5)*params(7)+params(2)*y(5)-y(3)*params(3)+y(1)*params(3);
residual(6)= lhs-rhs;
lhs =0;
rhs =y(5)*params(8)+params(9)*y(7)+x(4);
residual(7)= lhs-rhs;
lhs =y(7);
rhs =y(8);
residual(8)= lhs-rhs;
lhs =0;
rhs =params(1)*params(6)*y(9)-T29*y(9)+params(1)*params(2)*params(6)*y(9)+y(1)*params(2)*params(6)*(params(1)-params(6))*(1-params(10))-params(1)*params(6)*y(8);
residual(9)= lhs-rhs;
lhs =y(10);
rhs =y(2)-y(9);
residual(10)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(10, 10);

  %
  % Jacobian matrix
  %

  g1(1,1)=1-params(10);
  g1(2,1)=(-((params(1)-params(6))*(params(1)-params(10)*params(2)*params(6))));
  g1(2,2)=(-(params(1)*params(2)*params(6)+params(1)*params(6)-T29));
  g1(2,3)=(params(1)-params(2)*params(6))*(params(1)-params(6));
  g1(2,8)=params(1)*params(6);
  g1(3,4)=(-1);
  g1(3,5)=1;
  g1(4,6)=1-params(11);
  g1(5,8)=1;
  g1(6,1)=(-params(3));
  g1(6,3)=params(3);
  g1(6,5)=1+params(2)*params(7)-(params(2)+params(7));
  g1(6,6)=(-1);
  g1(7,5)=(-params(8));
  g1(7,7)=(-params(9));
  g1(8,7)=1;
  g1(8,8)=(-1);
  g1(9,1)=(-(params(2)*params(6)*(params(1)-params(6))*(1-params(10))));
  g1(9,8)=params(1)*params(6);
  g1(9,9)=(-(params(1)*params(2)*params(6)+params(1)*params(6)-T29));
  g1(10,2)=(-1);
  g1(10,9)=1;
  g1(10,10)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],10,100);
end
end
