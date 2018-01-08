%El juego de la vida
%Sergio Garcia del Olmo 
%Grupo B

function juegodelavida

%Crea el tablero donde se encontraran las celulas
   axes('Units','normalized','Position',[0.05 0.05 0.90 0.90],'Visible','off','SortMethod','childorder','NextPlot','add');
 
   axis([-1 1 -1 1]);

m = 100; %Tamaño del mundo
TableroSiguiente = sparse(m,m); %Celulas vivas
n=1000; %iteraciones

Reglas( TableroSiguiente,m);
 
dibujaCelula (TableroSiguiente,m)

%Intervalos vecinos a una celula
IntVec1 = [m 1:m-1];
IntVec2 = [2:m 1];
IntVec3 = [2:m 1];
IntVec4 = [m 1:m-1];

Evolucion( IntVec1,IntVec2,IntVec3,IntVec4,TableroSiguiente,plothandle,n );