% Project 2
% Sagar Jagtap, Arun Ramachandran

clear, clc;
load('Response_2000.txt');
Response = Response_2000;
Ts = 1/20000;

%% Emperical TF

freq = Response(:, 1);  % Hz
u = Response(:,2).*exp(1i.*Response(:,4));  % Input
y = Response(:,3).*exp(1i.*Response(:,5));  % Output
freq_rad = freq*2.*pi;    % rad/s
data = iddata(y, u, Ts, 'Frequency', freq_rad); % Ts = 0
G_etfe = etfe(data)
[mag_etfe,phase_etfe,w_etfe] = bode(G_etfe);

%% For Experimental plot

mag_ex = Response(:,3)./Response(:,2);  % Magnitude Op/In
phase_in = wrapToPi(Response(:,4));
phase_out = wrapToPi(Response(:,5));
phasedif = phase_out - phase_in;
phase_ex = rad2deg(wrapToPi(phasedif)); 

%% Theoretical TF

C1 = 27e-9; C2 = 27e-9;
R1 = 20000; R2 = 5600;
G_theoretical = tf([C1*R1  0],[C1*R1*C2*R2  (C1*R1+C2*R2)  1])
[mag_th,phase_th,w_th] = bode(G_theoretical);

%% Frequency Response

subplot(211)
semilogx(w_th/(2*pi),20*log10(squeeze(mag_th)),w_etfe/(2*pi),20*log10(squeeze(mag_etfe)),freq,20*log10(squeeze(mag_ex)));
title('Frequency Response (Magnitude plot)')
xlabel('Frequency ( Hz )');
ylabel('Gain ( dB )');
legend('Theoretical','Emperical','Experimental');
grid;

subplot(212)
semilogx(w_th/(2*pi),squeeze(phase_th), w_etfe/(2*pi),squeeze(phase_etfe+360), freq, squeeze(phase_ex));
title('Frequency Response (Phase plot)')
xlabel('Frequency ( Hz )');
ylabel('Phase ( degree )');
legend('Theoretical','Emperical','Experimental');
grid;
