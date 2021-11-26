function Plot_Energy_Spectrum(E,F) 
%ham ve pho nang luong tren mien tan so
%--------------------------------------------------------------------------
%Plot_Energy_Spectrum(E,F)
%E = pho nang luong
%F = tan so thuc

%ve pho nang luong
subplot(3,1,3);
plot(F,E,'k','LineWidth',1);
axis([0,8000,min(E),max(E)]); %gioi han chi lay mot nua gia tri tan so lay mau
title('Energy Spectrum');     %tieu de
ylabel('Magnitude');          %Cuong do nang luong
xlabel('Frequency (Hz)');     %mien tan so thuc
end