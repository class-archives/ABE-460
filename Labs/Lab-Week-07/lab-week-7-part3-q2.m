clf
clc

circuit_time = 0:0.04:140; %Time matrix 
output_volt = Vc_output'; %Experimental data matrix of voltage values
peak_val = max(output_volt); %Peak value of Vc 
zeta = 0.55680; %Damping ratio
peak_time = 31.84; %Time it takes to cross steady state value (9280) in us
natural_freq = 3.14159265 / peak_time / sqrt(1-zeta^2);
sq_nat_freq = natural_freq^2;
mid = 2*zeta*natural_freq;

top = [sq_nat_freq];
bottom = [1 mid sq_nat_freq];
system = tf(top, bottom);


figure(2)
plot(circuit_time,output_volt, 'r')
hold on
ezplot('9280*(1 - ((exp(-0.557*0.118804*x)/sqrt(1-0.557^2)) * sin(0.118804*sqrt(1-0.557^2)*x + atan(sqrt((1-0.557^2)/0.557)))))', [0 140]) 
stepOpts = stepDataOptions('InputOffset',0,'StepAmplitude',9200);
step(system, 140, stepOpts, 'g');
ylabel('Voltage (mV)')
xlabel('Time (microseconds)')
title('RLC Circuit vs Time')
legend('Experimental Data', 'Time Function', 'Transfer Function')