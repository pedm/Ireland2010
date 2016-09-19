function [ output ] = select_output( simout )
% Select output

    % growth (g) is 7
    jj = 7; 
    % M_.endo_names(jj)
    growth = simout(jj,:);


    % Transform
    % Notice that growth has been demeaned in the data. But in reality, growth
    % has a mean of 0.00457258. This is computed in the data excel file
    % included in Ireland's replication code. Therefore we must add the mean
    % (oo_.SmoothedVariables.g + 0.00457258 exactly replicates the ln(gy)
    % column in Ireland's data file)
    
    growth = growth + 0.00457258;
    output = cumsum(growth);

end

