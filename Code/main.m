%Noise_cutting; %cat chinh xac 0.05s nhieu va xuat ra file .wav
%Audio_cutting; %cat chinh xac 0.05s o giua nguyen am va xuat ra file .wav
y = zeros(5,800); %cac tin hieu
Medium = zeros(1,5); %gia tri trung binh
Variance = zeros(1,5); %gia tri phuong sai
Autocorrelation = zeros(5,801); %gia tri ham tu tuong quan r(k)
F = zeros(5,800); %tan so so thuc
E = zeros(5,800); %gia tri pho nang luong

[y(1,:),fs] = audioread('D:\Desktop\Project\Signal\a1.wav');%file nguyen am lan 1(da cat)
[y(2,:),~] = audioread('D:\Desktop\Project\Signal\a2.wav');%file nguyen am lan 2(da cat)
[y(3,:),~] = audioread('D:\Desktop\Project\Signal\a3.wav');%file nguyen am lan 3(da cat)
[y(4,:),~] = audioread('D:\Desktop\Project\Signal\a4.wav');%file nguyen am lan 4(da cat)
[y(5,:),~] = audioread('D:\Desktop\Project\Signal\a5.wav');%file nguyen am lan 5(da cat)

%[y(1,:),fs] = audioread('D:\Desktop\Project\Noise\noise2_1.wav');%file nhieu lan 1(da cat)
%[y(2,:),~] = audioread('D:\Desktop\Project\Noise\noise2_2.wav');%file nhieu lan 2(da cat)
%[y(3,:),~] = audioread('D:\Desktop\Project\Noise\noise2_3.wav');%file
%nhieu lan 3(da cat) 
%[y(4,:),~] = audioread('D:\Desktop\Project\Noise\noise2_4.wav');%file nhieu lan 4(da cat)
%[y(5,:),~] = audioread('D:\Desktop\Project\Noise\noise2_5.wav');%file nhieu lan 5(da cat)

for i = 1:5
y(i,:) = Normally_signal_function(y(i,:)); %chuan hoa cac tin hieu
end

for i = 1:5
    Medium(i) = Medium_function(y(i,:)); %goi ham tinh gttb
    Variance(i) = Variance_function(y(i,:));%goi ham tinh phuong sai
    Autocorrelation(i,:) = Autocorrelation_function(y(i,:)); %goi ham tu tuong quan
    [F(i,:),E(i,:)] = Energy_Spectrum_function(y(i,:),fs); %goi ham tim pho nang luong,tan so thuc
    Plot_Signal(y(i,:),fs,i); %ve tin hieu tren mien thoi gian
    Plot_Energy_Spectrum(F(i,:),E(i,:)); %ve pho nang luong tren mien tan so
    Plot_Autocorrelation(Autocorrelation(i,:)); %ve ham tu tuong quan 
end
Table_function(Medium,Variance); %ve bang thong ke gttb va phuong sai