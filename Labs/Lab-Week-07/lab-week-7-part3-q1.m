clf
clc

chip_temp = IC_chip';
chip_time = 0:0.12:72;
time_constant = 16.8;
output_exp = IC_chip ./ 10;

y_ss = 80;
yo = 256;

num = [1];
den = [time_constant 1];
sys = tf(num, den);
stepOpts = stepDataOptions('InputOffset', yo,'StepAmplitude',y_ss-yo);
step(sys, 72, stepOpts);

figure(1)
hold on
plot(chip_time, output_exp, '--')
axis([0 80 0 300])
xlabel('Time (sec)')
ylabel('Temp (F)')
legend('Experiment')


