myFolder = 'C:\Users\chiara\Documents\formazione\laurea informatica\III anno\tesi EmoMadrid\Images';
Congestion_array = [];
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
    [clutter_scalar_fc, clutter_map_fc] = getClutter_FC(im);
%figure, imshow((clutter_map_fc-min(clutter_map_fc(:)))/(max(clutter_map_fc(:))-min(clutter_map_fc(:))));
%title('Feature Congestion clutter map');
clutter_metric = clutter_scalar_fc;
Congestion_array(k) = clutter_metric ;

end

 
disp (Congestion_array) 