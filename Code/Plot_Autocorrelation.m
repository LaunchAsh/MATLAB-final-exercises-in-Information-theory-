function Plot_Autocorrelation(Autocorrelation) 
%ham ve ham tu tuong quan
%--------------------------------------------------------------------------
%Plot_Autocorrelation(Autocorrelation)
%Autocorrelation = ham tu tuong quan
N = length(Autocorrelation); %do dai tin hieu
k = -(N-1)/2:(N-1)/2;        %truc do dich chuyen tin hieu

%ve ham tu tuong quan
subplot(3,1,2);
plot(k,Autocorrelation,'r','LineWidth',1);
axis([min(k),max(k),min(Autocorrelation),max(Autocorrelation)]);%gioi han truc 
title('Autocorrelation Function'); %tieu de
xlabel('Delay');                   %do dich tin hieu
ylabel('Magnitude');               %bien do tin hieu
end