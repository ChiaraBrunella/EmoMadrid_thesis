t = readtable('index_con aggiunte.xlsx')

MeanValence = table2array(t(:,4));
MeanArousal = table2array(t(:,7));


Quadranti = ["depression","contentment", "distress", "excitement"];
Quadrante_array = [];
Quadrante_array = string (Quadrante_array );
Quadrante_array= categorical(Quadrante_array, Quadranti);
for k = 1:length(MeanArousal)
    if (MeanArousal (k) < 0) && (MeanValence (k) < 0)
               Quadrante_array (k) = Quadranti (1);
                disp ( k +" HA AROUSAL E VALENZA NEGATIVA: ")
                disp(Quadranti(1))
                disp (Quadrante_array (k))
    elseif (MeanArousal(k)< 0)&& (MeanValence (k) >= 0)
 Quadrante_array (k) = Quadranti (2);
       disp ( k +" HA AROUSAL -E VALENZA +")
       disp(Quadranti(2))
       disp(Quadrante_array (k))
       
    elseif (MeanArousal (k)>= 0) && (MeanValence(k) >= 0)
         Quadrante_array(k) = Quadranti (4);
        disp ( k +" HA AROUSAL + E VALENZA +")
        disp(Quadranti(4))
        disp (Quadrante_array (k))
        
    elseif (MeanArousal (k) >= 0) && (MeanValence(k)< 0)
       Quadrante_array (k)= Quadranti (3);
       disp ( k + " HA AROUSAL + E VALENZA -")
       disp(Quadranti(3))
       disp(Quadrante_array (k))
    end
end

disp (Quadrante_array)