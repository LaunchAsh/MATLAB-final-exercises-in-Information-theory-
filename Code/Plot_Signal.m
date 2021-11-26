function Plot_Signal(y,fs,i) 
%ham ve tin hieu dau vao
%--------------------------------------------------------------------------
%y = tin hieu vao
%fs = tan so cua tin hieu
%i = figure thu i
N = length(y); %do dai tin hieu 

%sinh truc thoi gian
t = 0:seconds(1/fs):seconds(N/fs); 
t = t(1:end-1);

%in ra tin hieu tren mien thoi gian
figure(i);
subplot(3,1,1); 
plot(t,y,'b','LineWidth',1); 
title('Base Signal');           %tieu de 
xlabel('Times');                %mien thoi gian 
ylabel('Magnitude');            %bien do tin hieu