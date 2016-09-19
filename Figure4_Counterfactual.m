%% Timing

close all;

% Data in Ireland 2010 goes from 1983:1 to 2009:4 (108 observations)
% Figure 4 plots 2007:3 to 2009:4
select_obs = 100:108;

%% Counterfactual Sim
y0 = oo_.steady_state;
dr = oo_.dr;
ex_ = [oo_.SmoothedShocks.epsilon_a, oo_.SmoothedShocks.epsilon_e, oo_.SmoothedShocks.epsilon_z, oo_.SmoothedShocks.epsilon_r];
ex_ = ex_(select_obs, :);
iorder = 1;

simout_base=simult_(y0,dr,ex_,iorder);
% the first observation is ss
% simout = simout(:,2:end);
output_base = select_output(simout_base);

figure();
names = M_.exo_names;

%% Counterfactual a
for ii = 1:4;

    % a shocks only
    ex_a = zeros(size(ex_));
    ex_a(:,ii) = ex_(:,ii)
    simout_a = simult_(y0,dr,ex_a,iorder);
    output_a = select_output(simout_a);

    subplot(2,2,ii)
    plot(output_base, 'k--')
    ylim([-.05 .05])

    hold on;
    plot(output_a, 'k')
    hold off;

    name = names(ii, :)
    title([name(end), ' shock'])

end

suptitle('Figure 4: Counterfactual Output Paths')
print('Figure4_penalty_','-depsc')
