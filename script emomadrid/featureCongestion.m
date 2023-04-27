im = imread('image.jpg');
 [clutter_scalar_fc, clutter_map_fc] = getClutter_FC(im);
figure, imshow((clutter_map_fc-min(clutter_map_fc(:)))/(max(clutter_map_fc(:))-min(clutter_map_fc(:))));
title('Feature Congestion clutter map');
clutter_metric = clutter_scalar_fc;

