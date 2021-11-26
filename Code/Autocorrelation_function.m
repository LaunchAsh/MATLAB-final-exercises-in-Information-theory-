function [Rk] = Autocorrelation_function(x)
%Ham nay co nhiem vu tim ham tu tuong quan cua tin hieu x
%--------------------------------------------------------------------------
%[Rk] = Autocorrelation_function(x)
%x = Tin hieu can tinh ham tu tuong quan
%Rk = Ham tu tuong quan cua tin hieu vao

N = length(x);                      %Do dai tin hieu vao
N1 = floor(N/2);                    %Do dai cua tin hieu vao sau khi chia 2
                                    %va lam tron
Rk = zeros(1,2*N1+1);               %Khoi tao Rk

%Tinh Rk

%Tinh Rk voi truong hop chi so k di tu -N/2 den 0
for i = -N1:0
    N2 = N + i;
    for j = 0:N2-1
        Rk(i+N1+1) = Rk(i+N1+1) + x(j+1)*x(j+1-i);
    end
    Rk(i+N1+1)=Rk(i+N1+1)/N2;
end

%Tinh Rk voi truong hop chi so k di tu 1 den N/2
for i = 1:N1
    N2 = N-i;
    for j = i:N-1
        Rk(i+N1+1) = Rk(i+N1+1) + x(j+1)*x(j+1-i);
    end
    Rk(i+N1+1)= Rk(i+N1+1)/N2;
end
end