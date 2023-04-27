t = readtable('C:\Users\chiara\Documents\formazione\laurea informatica\III anno\tesi EmoMadrid\Index_x_Categoria\index_con aggiunte_noFormat.xlsx');

MeanValence = table2array(t(:,4));
MeanArousal = table2array(t(:,7));

BiValence = discretize(MeanValence, 2, 'categorical', {'negativa', 'positiva'});
%[triValence,E] = discretize(MeanValence, 3, 'categorical', {'negativa', 'neutra', 'positiva'});

[BiArousal, E] = discretize(MeanArousal, 2, 'categorical', {'basso', 'alto'});
%[triArousal,E] = discretize(MeanArousal, 3, 'categorical', {'basso', 'neutro', 'alto'});

%disp (categories(BiValence))
%pie_bival= pie(BiValence);
 
%disp (categories(triValence))
%pie_trival= pie(triValence);
 
%disp (categories(BiArousal))
%pie_biarousal= pie(BiArousal);
 
%disp (categories(triArousal))
 %pie_triarousal= pie(triArousal);
 
