
Category = table2array(t(:,2));
category= categorical(Category);
quadrante = table2array(t(:,9));
quadrante = categorical(quadrante);
disp (categories(category))
 pie_total= pie(quadrante);
