function [TableroSiguiente,n_vivas,i,j] = Evolucion( IntVec1,IntVec2,IntVec3,IntVec4,TableroSiguiente,plothandle,n );

    while n>0
        
        n=n-1;
        %Cuantos vecinos hay vivos
        n_vivas=TableroSiguiente(IntVec1,:) + TableroSiguiente(IntVec3,:) + TableroSiguiente(:,IntVec2) + TableroSiguiente(:,IntVec4) + TableroSiguiente(IntVec1,IntVec2) + TableroSiguiente(IntVec1,IntVec4) + TableroSiguiente(IntVec3,IntVec2) + TableroSiguiente(IntVec3,IntVec4);

        %Una celula viva con 2 celulas vecinas, o culaquier celula con 3 celulas
        %vecinas esta viva en el siguiente paso
        TableroSiguiente = (TableroSiguiente & (n_vivas == 2)) | (n_vivas == 3);

        %Actualiza el tablero
        [i,j] = find(TableroSiguiente);
            set(plothandle,'xdata',i,'ydata',j)
            drawnow
    end


end

