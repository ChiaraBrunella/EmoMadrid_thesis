
% t = readtable('EmoMadrid_Animals_Images.xlsx')
myFolder = 'C:\Users\chiara\Documents\formazione\laurea informatica\III anno\tesi EmoMadrid\Index_x_Categoria';
if ~isfolder(myFolder)

  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end
filePattern = fullfile(myFolder, '*.xlsx');
xlsFiles = dir(filePattern);
for k = 1:length(xlsFiles)
  baseFileName = xlsFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);

t = readtable(fullFileName)


MeanValence = table2array(t(:,4));
MeanArousal = table2array(t(:,7));
AverageLuminosity = table2array(t(:,9));
SizeInBytes = table2array(t(:,10));   
Contrast = table2array(t(:,11));   
Colorfulness = table2array(t(:,12));  
featureCongestion = table2array(t(:,13));   
%SF768_384 = table2array(t(:,12));
%SF384_192 = table2array(t(:,13));  
%SF192_96  = table2array(t(:,14));   
%SF96_48   = table2array(t(:,15));    
%SF48_24   = table2array(t(:,16));   
%SF24_12   = table2array(t(:,17));     
%SF12_6    = table2array(t(:,18));    
%SF6_3     = table2array(t(:,19)); 
%SFresidual= table2array(t(:,21));


[r_ColXAro, p_ColXAro] = corrcoef(Colorfulness, MeanArousal)
[r_ColXVal, p_ColXVal] = corrcoef(Colorfulness, MeanValence)
[r_ConXVal, p_ConXVal] = corrcoef(featureCongestion, MeanValence)
[r_ConXAro, p_ConXAro] = corrcoef(featureCongestion, MeanArousal)

end