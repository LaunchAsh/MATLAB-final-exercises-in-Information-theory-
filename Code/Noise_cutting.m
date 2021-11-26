[sample1,Fs] = audioread('D:\Desktop\Project\Raw_Noise\noise_2_1.wav'); %doc tin hieu nhieu lan 1 voi tan so fs
x1 = sample1(1:0.05*Fs); %lay tin hieu 0,05s dau tien cua tin hieu
audiowrite('D:\Desktop\Project\Noise\noise2_1.wav',x1,Fs);%xuat tin hieu ra file .wav voi tin hieu lan 1 da cat
[sample1,~] = audioread('D:\Desktop\Project\Raw_Noise\noise_2_2.wav');%doc tin hieu nhieu lan 2 voi tan so fs
x2 = sample1(1:0.05*Fs); %lay tin hieu 0,05s dau tien cua tin hieu
audiowrite('D:\Desktop\Project\Noise\noise2_2.wav',x2,Fs);%xuat tin hieu ra file .wav voi tin hieu lan 2 da cat
[sample1,~] = audioread('D:\Desktop\Project\Raw_Noise\noise_2_3.wav');%doc tin hieu nhieu lan 3 voi tan so fs
x3 = sample1(1:0.05*Fs); %lay tin hieu 0,05s dau tien cua tin hieu
audiowrite('D:\Desktop\Project\Noise\noise2_3.wav',x3,Fs);%xuat tin hieu ra file .wav voi tin hieu lan 3 da cat
[sample1,~] = audioread('D:\Desktop\Project\Raw_Noise\noise_2_4.wav');%doc tin hieu nhieu lan 4 voi tan so fs
x4 = sample1(1:0.05*Fs); %lay tin hieu 0,05s dau tien cua tin hieu
audiowrite('D:\Desktop\Project\Noise\noise2_4.wav',x4,Fs);%xuat tin hieu ra file .wav voi tin hieu lan 4 da cat
[sample1,~] = audioread('D:\Desktop\Project\Raw_Noise\noise_2_5.wav');%doc tin hieu nhieu lan 5 voi tan so fs
x5 = sample1(1:0.05*Fs); %lay tin hieu 0,05s dau tien cua tin hieu
audiowrite('D:\Desktop\Project\Noise\noise2_5.wav',x5,Fs);%xuat tin hieu ra file .wav voi tin hieu lan 5 da cat