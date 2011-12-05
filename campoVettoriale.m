%Esperimento con quiver
%Guardare la documentazione per info
%
% Disegna un campo vettoriale. Il dominio delle due funzioni è un quadrato
% centrato nell'origine. 
%
lato = 5; %lato del quadrato
step = 0.4; 

xs = [-lato:step:lato];
ys = [-lato:step:lato];
[A,B] = meshgrid(xs,ys);
X = ones(length(xs),length(ys));
Y = ones(length(xs),length(ys));
for i=1:length(xs)
    for j = 1:length(ys)
        x = xs(i);
        y = ys(j);
        
        X(i,j) = - (x+y);
        Y(i,j) = - (x-y);
        %decommentare queste righe per il campo vettoriale del modello di Lotka-Volterra
        %X(i,j) = -x*y+x; 
        %Y(i,j) = -y+x*y;
    end
end
%figure('Name','Campo vettoriale','NumberTitle','off');
quiver(A,B,X.*10,Y.*10)