
  
myFolder = 'C:\Users\chiara\Documents\formazione\laurea informatica\III anno\tesi EmoMadrid\Images';
Colorful_array = [];
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
 im = double(im);
    R = im(:,:,1);
    G = im(:,:,2);
    B = im(:,:,3);
    
    % rg = R - G
    rg = abs(R - G);
    rg = rg(:);
    
    % yb = 1/2(R + G) - B
    yb = abs( (0.5*(R + G)) - B );
    yb = yb(:);
    
    % standard deviation and the mean value of the pixel
    % cloud along direction, respectively
    stdRG = std(rg);
    meanRG = mean(rg);
    
    stdYB = std(yb);
    meanYB = mean(yb);
    
    stdRGYB = sqrt((stdRG)^2 + (stdYB)^2);
    meanRGYB = sqrt((meanRG)^2 + (meanYB)^2);
    
    C = stdRGYB + (0.3*meanRGYB); 
Colorful_array (k) = C;
 end