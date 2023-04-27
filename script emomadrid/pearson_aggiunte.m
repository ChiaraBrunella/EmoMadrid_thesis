t = readtable('index_con aggiunte.xlsx');
Category = table2array(t(:,2));
MeanValence = table2array(t(:,4));
MeanArousal = table2array(t(:,7));
AverageLuminosity = table2array(t(:,10));
SizeInBytes = table2array(t(:,11));   
Contrast = table2array(t(:,12));   
Colorfulness = table2array(t(:,13)); 
featureCongestion = table2array(t(:,14));
subbandEntropy = table2array(t(:,15));
SF768_384 = table2array(t(:,16));
SF384_192 = table2array(t(:,17));  
SF192_96  = table2array(t(:,18));   
SF96_48   = table2array(t(:,19));    
SF48_24   = table2array(t(:,20));   
SF24_12   = table2array(t(:,21));     
SF12_6    = table2array(t(:,22));    
SF6_3     = table2array(t(:,23)); 
SFresidual= table2array(t(:,24));

[r_ValXAro,p_ValXAro] = corrcoef(MeanValence, MeanArousal)
[r_LumXAro, p_LumXAro] = corrcoef(AverageLuminosity, MeanArousal)
[r_LumXVal, p_LumXVal] = corrcoef(AverageLuminosity, MeanValence)
[r_SzXAro, p_SzXAro] = corrcoef(SizeInBytes, MeanArousal)
[r_SzXVal, p_SzXVal] = corrcoef(SizeInBytes, MeanValence)
[r_ContrXVal, p_ContrXVal] = corrcoef(Contrast, MeanValence)
[r_ContXAro, p_ContXAro] = corrcoef(Contrast, MeanArousal)
[r_ColXAro, p_ColXAro] = corrcoef(Colorfulness, MeanArousal)
[r_ColXVal, p_ColXVal] = corrcoef(Colorfulness, MeanValence)
[r_ConXVal, p_ConXVal] = corrcoef(featureCongestion, MeanValence)
[r_ConXAro, p_ConXAro] = corrcoef(featureCongestion, MeanArousal)
[r_SubXVal, p_SubXVal] = corrcoef(subbandEntropy, MeanValence)
[r_SubXAro, p_SubXAro] = corrcoef(subbandEntropy, MeanArousal)
[r_SF768384XVal,p_SF768384XVal] = corrcoef(SF768_384, MeanValence)
[r_SF768384XAro,p_SF768384XAro] = corrcoef(SF768_384, MeanArousal)
[r_SF384192XVal,p_SF384192XVal] = corrcoef(SF384_192, MeanValence)
[r_SF384192XAro,p_SF384192XAro] = corrcoef(SF384_192, MeanArousal)
[r_SF19296XVal,p_SF19296XVal] = corrcoef(SF192_96, MeanValence)
[r_SF19296XAro,p_SF19296XAro] = corrcoef(SF192_96, MeanArousal)
[r_SF9648XVal,p_SF9648XVal] = corrcoef(SF96_48, MeanValence)
[r_SF9648XAro,p_SF9648XAro] = corrcoef(SF96_48, MeanArousal)
[r_SF4824XVal,p_SF4824XVal] = corrcoef(SF48_24, MeanValence)
[r_SF4824XAro,p_SF4824XAro] = corrcoef(SF48_24, MeanArousal)
[r_SF2412XVal,p_SF2412XVal] = corrcoef(SF24_12, MeanValence)
[r_SF2412XAro,p_SF2412XAro] = corrcoef(SF24_12, MeanArousal)
[r_SF126XVal,p_SF126XVal] = corrcoef(SF12_6, MeanValence)
[r_SF126XAro,p_SF126XAro] = corrcoef(SF12_6, MeanArousal)
[r_SF63XVal,p_SF63XVal] = corrcoef(SF6_3, MeanValence)
[r_SF63XAro,p_SF63XAro] = corrcoef(SF6_3, MeanArousal)
[r_SFresXVal,p_SFresXVal] = corrcoef(SFresidual, MeanValence)
[r_SFresXAro,p_SFresXAro] = corrcoef(SFresidual, MeanArousal)