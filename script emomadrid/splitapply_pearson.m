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

category= categorical(Category);
 C = findgroups(category);

% variables = [AverageLuminosity SizeInBytes Contrast Colorfulness featureCongestion subbandEntropy];
%for k = 1:length(variables)
     pearson = splitapply(@(x1,x2){corrcoef(x1,x2)}, subbandEntropy, MeanArousal,C);
 printf('MeanArousal: ')
  disp(subbandEntropy)
  disp (category)
  disp (pearson)
%end