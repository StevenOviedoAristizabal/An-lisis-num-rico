y=input('Ingrese la funcion : ', 's'); 
f=inline(y); 
disp('Cree el intervalo en cual se va a aplicar biseccion [a,b]');
a=input('Ingrese (a): '); 
b=input('Ingrese (b): '); 
tol = input ('Ingrese la tolerancia : '); 
n = input ('Ingrese el número de iteraciones : '); 
fa = f(a);
fb = f(b); 
k=1;

if fa==0
    fprintf('El punto (a) es una raiz  : %g \n',a); 
elseif fb==0
    fprintf('La Raiz Dentro Del Intervalo Ingresado Es  : %g \n',b); 
elseif fa*fb >0
    fprintf('El intervalo dado no contiene una raiz, por favor Ingrese otro Intervalo');
else        
    xm=(a+b)/2; 
    fxm=f(xm); 
    error=tol+1; 
    k = k+1; 
    while fxm~=0 && error>tol && k<n 
        if fa*fxm<0
            b=xm;
            fb=fxm;
        else 
            a=xm;
            fa=fxm;
        end
    x2=xm; 
    xm=(a+b)/2; 
    fxm=f(xm);
    error=abs(xm-x2); 
    errorrel=abs(error/xm);
    k = k+1;
    end
    if error==0
        fprintf('El valor converge al valor verdadero que es: %g \n',error);
    else
    fprintf('No coverge al valor de verdadero: %g \n',error);
    end             
    if fxm==0 
    fprintf('La raiz en el intervalo ingresado es: %g \n',xm);
    else
        if error<tol 
            fprintf( 'La raiz en el intervalo ingresado es : (%g) con un error de: %g  \n',xm,error)
        else
            fprintf('intente con otro el numero de iteraciones \n');
        end
    end
end