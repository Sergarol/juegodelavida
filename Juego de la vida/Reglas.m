function [ TableroInicio, TableroSiguiente, m ] = Reglas( TableroSiguiente,m)

%Crea grupos de celulas vivas
p = -1:1;
   for TableroInicio= 1:15
      kx = floor(rand*(m-4))+2;
      ky = floor(rand*(m-4))+2;
      TableroSiguiente(kx+p,ky+p) = (rand(3)>0.5);
   end

end

