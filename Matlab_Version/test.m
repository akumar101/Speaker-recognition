clear;
close all;
clc;
Fs=11025;NoOfSeconds=2;
display('Subject1 get ready');
pause(5);
for i=1:10
    pause(2);
    display(['speak trial ',num2str(i)]);
    audio1=wavrecord(NoOfSeconds*Fs,Fs);
    display('------done------');
    audio_sub1(i,:)=audio1';
end
display('Subject2 get ready');
pause(5);
for i=1:10
    pause(2);
    display(['speak trial ',num2str(i)]);
    audio1=wavrecord(NoOfSeconds*Fs,Fs);
    display('------done------');
    audio_sub2(i,:)=audio1';
end
display('Subject3 get ready');
pause(5);
for i=1:10
    pause(2);
    display(['speak trial ',num2str(i)]);
    audio1=wavrecord(NoOfSeconds*Fs,Fs);
    display('------done------');
    audio_sub3(i,:)=audio1';
end
display('Subject4 get ready');
pause(5);
for i=1:10
    pause(2);
    display(['speak trial ',num2str(i)]);
    audio1=wavrecord(NoOfSeconds*Fs,Fs);
    display('------done------');
    audio_sub4(i,:)=audio1';
end
display('Subject5 get ready');
pause(5);
for i=1:10
    pause(2);
    display(['speak trial ',num2str(i)]);
    audio1=wavrecord(NoOfSeconds*Fs,Fs);
    display('------done------');
    audio_sub5(i,:)=audio1';
end
for i=1:10
    labels(i,1)=1;
    labels(10+i,1)=2;
    labels(20+i,1)=3;
    labels(30+i,1)=4;
    labels(40+i,1)=5;
end
audio=[audio_sub1;audio_sub2;audio_sub3;audio_sub4;audio_sub5];
save trial_6_13_6_16_peas.mat audio labels

%load trial1.mat



% end
% figure(1);plot(audio1);
% figure(2);
% fft_audio1=fft(audio1(1:length(audio1)));
% plot(Fs*(1:length(audio1)/2)/length(audio1),abs(fft_audio1(1:length(audio1)/2)));