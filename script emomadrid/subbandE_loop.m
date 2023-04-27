myFolder = 'C:\Users\chiara\Documents\formazione\laurea informatica\III anno\tesi EmoMadrid';
SubbandE_array_rest = [];
if ~isfolder(myFolder)

  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end
filePattern = fullfile(myFolder, '*.jpg');
jpegFiles = dir(filePattern);
for k = 1:length(jpegFiles)
  baseFileName = jpegFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);
  imageArray = imread(fullFileName);
   im = imageArray;
   clutter_se = getClutter_SE(im);

SubbandE_array_rest(k) = clutter_se ;
disp (fullFileName)
disp(clutter_se)
end

 
disp (SubbandE_array_rest) 