function [i,j,plothandle] = dibujaCelula (TableroSiguiente,m)
%Busca las coordenadas de celulas vivas y las da color
[i,j] = find(TableroSiguiente);
   figure(gcf);
   plothandle = plot(i,j,'.','Color','black','MarkerSize',12);
   axis([0 m+1 0 m+1]);

end

