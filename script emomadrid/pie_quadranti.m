myFolder = 'C:\Users\chiara\Documents\formazione\laurea informatica\III anno\tesi EmoMadrid\Index_x_Categoria';
if ~isfolder(myFolder)

  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end
filePattern = fullfile(myFolder, '*.xlsx');
xlsFiles = dir(filePattern);
pies =[];
for k = 1:length(xlsFiles)
  baseFileName = xlsFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);

t = readtable(fullFileName)
Category = table2array(t(:,2));
category= categorical(Category);
quadrante = table2array(t(:,9));
quadrante = categorical(quadrante);
disp (categories(category))
 pies (k) = pie(quadrante);
fig pie(quadrante)
hold on
end


 

