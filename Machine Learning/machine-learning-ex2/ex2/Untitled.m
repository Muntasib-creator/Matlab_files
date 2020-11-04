clc;
  c=1;d=10;
    for i=1:99999999999999999999999999
        if mod(i,d)==0 ;
            d=d*10;
            c=c+1;
        end;
   
        fprintf("%d\n",c)
       end;  