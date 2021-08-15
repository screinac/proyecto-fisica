clc
clearvars
data = save('Experimento1.xlsx');

A_C=15.46*0.2/(10^2);
L_C=0.28/10;

R_Ref = data.Resistencia;
V_D3_1 = data.PocaLuz;
V_D3_2 = data.MuchaLuz;


R_D3_1=V_D3_1.*R_Ref./(6.52-V_D3_1);
R_D3_2=V_D3_2.*R_Ref./(6.52-V_D3_2);

I_D3_1=V_D3_1./R_D3_1;
I_D3_2=V_D3_2./R_D3_2;


Rho_D3_1=R_D3_1*A_C/L_C;
Rho_D3_2=R_D3_2*A_C/L_C;

Sigma_D3_1=1./Rho_D3_1;
Sigma_D3_2=1./Rho_D3_2;

Delta_Rho=(Rho_D3_1.*Rho_D3_2)./(Rho_D3_1-Rho_D3_2);
Delta_Sigma=Sigma_D3_2-Sigma_D3_1;

Prom1=mean(Delta_Rho);
Prom2=mean(Delta_Sigma);

f1=figure(1);
title('Grafica de Tension Vs Corriente - Poca Luz');
xlabel('Tension [V]');
ylabel('Corriente [A]');
hold on
plot(V_D3_1,I_D3_1);


f2=figure(2);
title('Grafica de Tension Vs Corriente - Mucha Luz');
xlabel('Tension [V]');
ylabel('Corriente [A]');
hold on
plot(V_D3_2,I_D3_2);



