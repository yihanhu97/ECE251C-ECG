clc
clear
close all

%% neck raw
Trial1 = load('neck_raw.mat');
T1_t = Trial1.ECG.times;
T1_data = Trial1.ECG.values;
figure()
hold on
plot(T1_t(1:2000),T1_data(1:2000));
title('cervical measurement')
xlabel('time(s)');
ylabel('vultage(uV)');
%% neck notch
Trial2 = load('neck_notch60.mat');
T2_t = Trial2.ECG.times;
T2_data = Trial2.ECG.values;

plot(T2_t(2000:4000)-T2_t(2000),T2_data(2000:4000));
title('cervical measurement with online 60Hz notch-off')
xlabel('time(s)');
ylabel('vultage(uV)');
%% chest raw
Trial1 = load('chest_raw.mat');
T1_t = Trial1.ECG.times;
T1_data = Trial1.ECG.values;
figure()
hold on
plot(T1_t(1:2000),T1_data(1:2000));
title('ECG measurement')
xlabel('time(s)');
ylabel('vultage(uV)');
%% chest notch
Trial2 = load('Chest_notch60.mat');
T2_t = Trial2.ECG.times;
T2_data = Trial2.ECG.values;
figure()
plot(T2_t(2000:4000)-T2_t(2000),T2_data(2000:4000));
title('ECG measurement with online 60Hz notch-off filter')
xlabel('time(s)');
ylabel('vultage(uV)');

