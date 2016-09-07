clear;clc;

load gpr.dat;

% Transformations come from replication code provided by Ireland
z = exp(mean(gpr(:,1)));
piss = exp(mean(gpr(:,2)));
beta = (z*piss)/(exp(mean(gpr(:,3))));

g = gpr(:,1) - log(z);
pi = gpr(:,2) - log(piss);
r = gpr(:,3) - log(z) + log(beta) - log(piss);

save IrelandData g pi r
