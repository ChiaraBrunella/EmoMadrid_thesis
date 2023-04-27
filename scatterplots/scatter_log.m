t = readtable('EmoMadrid_index_noImages.xlsx')

MeanValence = table2array(t(:,4));
MeanArousal = table2array(t(:,7));
   
SF768_384 = table2array(t(:,12));
SF384_192 = table2array(t(:,13));  
SF192_96  = table2array(t(:,14));   
SF96_48   = table2array(t(:,15));    
SF48_24   = table2array(t(:,16));   
SF24_12   = table2array(t(:,17));     
SF12_6    = table2array(t(:,18));    
SF6_3     = table2array(t(:,19)); 
SFresidual= table2array(t(:,20));


logSF768_384 = log(SF768_384);
logSF384_192 = log(SF384_192);  
logSF192_96  = log(SF192_96);   
logSF96_48   = log(SF96_48);    
logSF48_24   = log(SF48_24);   
logSF24_12   = log(SF24_12);     
logSF12_6    = log(SF12_6);    
logSF6_3     = log(SF6_3); 
logSFresidual= log(SFresidual);

scatter(logSF768_384, MeanValence, 11, 'g')
hold on
scatter(logSF384_192, MeanValence, 11, 'r')
hold on
scatter(logSF192_96, MeanValence, 11, 'b')
hold on
scatter(logSF96_48, MeanValence, 11, 'y')
hold on
scatter(logSF48_24, MeanValence, 11, 'magenta')
hold on
scatter(logSF24_12, MeanValence, 11, 'c')
hold on
scatter(logSF12_6, MeanValence, 11,[0.8500 0.3250 0.0980] )
hold on
scatter(logSF6_3, MeanValence, 11, [0.4940 0.1840 0.5560])
hold on
scatter(logSFresidual, MeanValence, 11, [0.3010 0.7450 0.9330])
hold off

