%Chuong trinh sau doc tin hieu am thanh khi 1 nguoi phat am 1 nguyen am 5
%lan, sau do loai bo khoang lang va cat lay 1 doan 50ms o giua roi luu ra file
fs = 16000;
frame_duration = 0.01;
%frame_duration = do dai 1 khung thoi gian
frame_length = frame_duration*fs;
%frame_length = so luong mau cua 1 khung
audio_length = 0.05;
%audio_length = do dai cua tin hieu sau khi cat

%Xu ly am thu o lan thu 1

[y,fs] = audioread('D:\Desktop\Project\Raw_Signal\ami1.wav');
%y = tin hieu am thanh
%fs = tan so lay mau

y = y(:,1);
%Loai bo bot 1 kenh

sig = 0;
%sig = bien tam de luu tin hieu

num_frames = floor((length(y)/frame_length));
%num_frames = so luong khung cua tin hieu

for i=1:num_frames
frame = y((i-1)*frame_length+1:i*frame_length,1);
if max(frame)>0.1
sig = [sig;frame];
end
end
%Loai bo khoang lang trong tin hieu, gia tri thu duoc sau khi loai bo
%khoang lang luu vao sig

sig = sig(2:length(sig),1);
%Loai bo gia tri 0 ban dau cua sig

tam = length(sig) - audio_length*fs;
tam = tam/2;
tam = floor(tam);
sig1 = sig(tam:tam+audio_length*fs-1,1);
%Cat doan tin hieu dai 0.05ms tu tin hieu da loai bo khoang lang roi luu vao sig1

audiowrite('D:\Desktop\Project\Signal\i1.wav',sig1,fs);
%Luu ra file doan tin hieu vua cat voi tien la i1.wav

%Cac doan chuong trinh sau giong voi doan chuong trinh tren nhung xu ly cac
%am thu o cac lan 2,3,4,5

%Xu ly am thu o lan thu 2

[y,fs] = audioread('D:\Desktop\Project\Raw_Signal\ami2.wav');
y = y(:,1);
sig = 0;
num_frames = floor((length(y)/frame_length));
for i=1:num_frames
frame = y((i-1)*frame_length+1:i*frame_length,1);
if max(frame)>0.1
sig = [sig;frame];
end
end
sig = sig(2:length(sig),1);
tam = length(sig) - audio_length*fs;
tam = tam/2;
tam = floor(tam);
sig1 = sig(tam:tam+audio_length*fs-1,1);
audiowrite('D:\Desktop\Project\Signal\i2.wav',sig1,fs);


%Xu ly am thu o lan thu 3

[y,fs] = audioread('D:\Desktop\Project\Raw_Signal\ami3.wav');
frame_duration = 0.01;
frame_length = frame_duration*fs;
audio_length = 0.05;
y = y(:,1);
sig = 0;
num_frames = floor((length(y)/frame_length));
for i=1:num_frames
frame = y((i-1)*frame_length+1:i*frame_length,1);
if max(frame)>0.1
sig = [sig;frame];
end
end
sig = sig(2:length(sig),1);
tam = length(sig) - audio_length*fs;
tam = tam/2;
tam = floor(tam);
sig1 = sig(tam:tam+audio_length*fs-1,1);
audiowrite('D:\Desktop\Project\Signal\i3.wav',sig1,fs);


%Xu ly am thu o lan thu 4

[y,fs] = audioread('D:\Desktop\Project\Raw_Signal\ami4.wav');
frame_duration = 0.01;
frame_length = frame_duration*fs;
audio_length = 0.05;
y = y(:,1);
sig = 0;
num_frames = floor((length(y)/frame_length));
for i=1:num_frames
frame = y((i-1)*frame_length+1:i*frame_length,1);
if max(frame)>0.1
sig = [sig;frame];
end
end
sig = sig(2:length(sig),1);
tam = length(sig) - audio_length*fs;
tam = tam/2;
tam = floor(tam);
sig1 = sig(tam:tam+audio_length*fs-1,1);
audiowrite('D:\Desktop\Project\Signal\i4.wav',sig1,fs);


%Xu ly am thu o lan thu 5

[y,fs] = audioread('D:\Desktop\Project\Raw_Signal\ami5.wav');
frame_duration = 0.01;
frame_length = frame_duration*fs;
audio_length = 0.05;
y = y(:,1);
sig = 0;
num_frames = floor((length(y)/frame_length));
for i=1:num_frames
frame = y((i-1)*frame_length+1:i*frame_length,1);
if max(frame)>0.1
sig = [sig;frame];
end
end
sig = sig(2:length(sig),1);
tam = length(sig) - audio_length*fs;
tam = tam/2;
tam = floor(tam);
sig1 = sig(tam:tam+audio_length*fs-1,1);
audiowrite('D:\Desktop\Project\Signal\i5.wav',sig1,fs);