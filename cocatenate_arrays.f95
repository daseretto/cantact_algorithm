 program concat_arrays
   integer,dimension(3,2) :: V, Vn
   integer,dimension(6,2) :: Vf
   integer             :: row,col,counter,vfrow
   counter=0
   !inicializo las dos matrices la matriz V contendra enteros del 1 al 6
   !la matix Vn sera el doble de cada elemento de V
   do row=1,3
        do col =1,2
                counter=counter+1
                V(row,col)=counter
                Vn(row,col)=counter*2
        end do
  end do

  print *,"Matrix V:"
  do row=1,3
        print *,(V(row,col),col=1,2)
  end do
  print *,"Matrix Vn:"
  do row=1,3
        print *,(Vn(row,col),col=1,2)
  end do
  print *,"Matrix Vf:"
  
  !concateno las matrices V y Vn 
  do row=1,6
        do col=1,2
                if (row < 4) then !esta condicion me permite saber si debo cargar el valor de V o Vn
                   Vf(row,col)=V(row,col)
                else
                   vfrow=row-3 !si estoy en la fila 4 de Vf debo cargar la fila 1 de Vn
                   Vf(row,col)=Vn(vfrow,col)
                end if
        end do
  end do
  do row=1,6
        print *,(Vf(row,col),col=1,2)
  end do

end program concat_arrays

