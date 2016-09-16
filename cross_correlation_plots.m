% Cross Correlation Functions
figure();
SS = oo_.SmoothedShocks;
NN = fieldnames(SS);


counter = 1;
for ii = 1:3
    for jj = ii+1:4
        
        xx = SS.(char(NN(ii)))
        yy = SS.(char(NN(jj)))

        xname=char(NN(ii))
        yname=char(NN(jj))

        subplot(3,2,counter)
        crosscorr(xx,yy, 10)
        title([xname(end), ' and ', yname(end), ' shocks'])
        ylabel('Cross Correlation')
        counter = counter+1;
    end
end

print('Cross_Correlations','-depsc')



% Cross Correlation Functions
figure();
SS = oo_.SmoothedShocks;
NN = fieldnames(SS);


counter = 1;
for ii = 1:4
    for jj = 1:4
        
        xx = SS.(char(NN(ii)))
        yy = SS.(char(NN(jj)))

        xname=char(NN(ii))
        yname=char(NN(jj))

        subplot(4,4,counter)
        crosscorr(x,y, 10)
        title([xname(end), ' and ', yname(end), ' shocks'])
        ylabel('Cross Correlation')
        counter = counter+1;
    end
end

