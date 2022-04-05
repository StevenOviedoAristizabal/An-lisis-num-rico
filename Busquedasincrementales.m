y=input('Ingrese la funcion: ', 's'); 
disp('Cree el intervalo en el cual se va a buscar la raíz [a,b]');
a=input('Ingrese (a): ');
b=input('Ingrese (b): ');
delta=input('Ingrese el Delta: ');
f=inline(y);
			
if f(a)==0
    fprintf('%g Es Una Raiz', a);
elseif f(b)==0	
    fprintf('%g Es Una Raiz', b);
else
    i=1;
    while a<b
    Xi = a + delta;
    if f(a)*f(Xi)<0
        fprintf('\n En el intervalo [%g,%g] Se Encuentra Una Raiz.', a, Xi);
    end   
a=Xi;
end
end