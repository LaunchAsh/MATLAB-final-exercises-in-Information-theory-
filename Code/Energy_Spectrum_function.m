function [E,F] = Energy_Spectrum_function(x,fs)
%Ham nay co nhiem vu tim pho nang luong cua tin hieu vao x
%--------------------------------------------------------------------------
%E nang luong cua tin hieu vao tren mien thoi gian
%F tan so thuc cua tin hieu vao

N = length(x);                  %Do dai cua tin hieu vao
X = fft(x);                     %Bien doi fourier cua tin hieu vao
E = abs(X).^2;                  %Xac dinh nang luong
k = 0:(N-1);                    %Xac dinh chi so
F = k*fs/N;                     %Xac dinh tan so
end