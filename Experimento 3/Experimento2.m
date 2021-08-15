clc
clearvars


AreaC=15.46*0.2/(10^2);
AreaS=15.46*0.28/(10^2);
LargoC=0.28/10;
Conductmin=1/(10.4*10^6*AreaC/LargoC);
volum=AreaC*LargoC;
ElectronC=1.602*10^(-19);
PlankConstJ=6.62607014*10^(-34);
LightConst=299792458;

%% Led Rojo %%
wavelength1=(780+620)/2*10^(-9); %%m
ResisD3_1=[1.194*10^3 5.52*10^3 7.57*10^3 133.8*10^3]; %ohm

potenciaLED1=[62.4036*10^-3 6.50328*10^-3 3.3856*10^-3 0.10*10^-3]; %
Ilum1=potenciaLED1*0.23*AreaS/(18.42/100);

Ef1=PlankConstJ*LightConst/wavelength1;
Gop1=Ilum1/Ef1;
Gop1=Gop1/volum;

resist1=ResisD3_1*AreaC/LargoC;
Conduct1=1./resist1;
DeltaConduct1=Conduct1-Conductmin;


xD1=DeltaConduct1./(ElectronC*Gop1);

mc1=max(xD1);

%% Led verde %%
wavelength4=(570+490)/2*10^(-9);
ResisD3_4=[517 1.61*10^3 1.84*10^3 26.35*10^3];

potenciaLED4=[87.502*10^-3 8.1837*10^-3 4.019*10^-3 0.1095*10^-3];
Ilum4=potenciaLED4*0.23*AreaS/(18.42/100);



Ef4=PlankConstJ*LightConst/wavelength4;
Gop4=Ilum4/Ef4;
Gop4=Gop4/volum;

resist4=ResisD3_4*AreaC/LargoC;
Conduct4=1./resist4;
DeltaConduct4=Conduct4-Conductmin;

xD4=DeltaConduct4./(ElectronC*Gop4);

mc4=max(xD4);


%% Led amarillo %%
wavelength3=(570+590)/2*10^(-9);
ResisD3_3=[1.04*10^3 1.68*10^3 6.13*10^3 247.4*10^3];

potenciaLED3=[65.3499*10^-3 6.60675*10^-3 3.47208*10^-3 0.10524*10^-3];
Ilum3=potenciaLED3*0.23*AreaS/(18.42/100);

Ef3=PlankConstJ*LightConst/wavelength3;
Gop3=Ilum3/Ef3;
Gop3=Gop3/volum;

resist3=ResisD3_3*AreaC/LargoC;
Conduct3=1./resist3;
DeltaConduct3=Conduct3-Conductmin;

xD3=DeltaConduct3./(ElectronC*Gop3);

mc3=max(xD3);


%% Led azul %%
wavelength5=(455+490)/2*10^(-9);
ResisD3_5=[370 400 1.8*10^3 25.2*10^3];

potenciaLED5=[83.469*10^-3 8.3658*10^-3 4.455*10^-3 0.12445*10^-3];
Ilum5=potenciaLED5*0.23*AreaS/(18.42/100);


Ef5=PlankConstJ*LightConst/wavelength5;
Gop5=Ilum5/Ef5;
Gop5=Gop5/volum;

resist5=ResisD3_5*AreaC/LargoC;
Conduct5=1./resist5;
DeltaConduct5=Conduct5-Conductmin;


xD5=DeltaConduct5./(ElectronC.*Gop5);
mc5=max(xD5);


%% Led anaranjado %%
wavelength2=(590+620)/2*10^(-9);
ResisD3_2=[1.23*10^3 1.36*10^3 6.67*10^3 165.6*10^3];

potenciaLED2=[65.4808*10^-3 6.6778*10^-3 3.48725*10^-3 0.10446*10^-3];
Ilum2=potenciaLED2*0.23*AreaS/(18.42/100);

Ef2=PlankConstJ*LightConst/wavelength2;
Gop2=Ilum2/Ef2;
Gop2=Gop2/volum;

resist2=ResisD3_2*AreaC/LargoC;
Conduct2=1./resist2;
DeltaConduct2=Conduct2-Conductmin;

xD2=DeltaConduct2./(ElectronC*Gop2);


mc2=max(xD2);





%% Led azul %%
wavelength51=(455+490)/2*10^(-9);
ResisD3_51=[370 400 1.8*10^3 25.2*10^3];

potenciaLED51=[83.469*10^-3 8.3658*10^-3 4.455*10^-3 0.12445*10^-3];
Ilum51=potenciaLED51*0.23;
potenciaLED51=potenciaLED51/(18.42/100);
potenciaLED51=potenciaLED51*0.23;



potenciaLED51=5.3*10^2*potenciaLED51*exp(-5.3*10^2*0.2/10);

Ef51=PlankConstJ*LightConst/wavelength51;
Gop51=potenciaLED51/Ef51;

Conduct51=LargoC./(ResisD3_51*AreaC);
DeltaConduct51=Conduct51-Conductmin;


xD51=DeltaConduct51./(ElectronC.*Gop51);
mc51=max(xD51);


%% Led verde %%
wavelength41=(570+490)/2*10^(-9);
ResisD3_41=[517 1.61*10^3 1.84*10^3 26.35*10^3];

potenciaLED41=[87.502*10^-3 8.1837*10^-3 4.019*10^-3 0.1095*10^-3];
Ilum41=potenciaLED41*0.23;
potenciaLED41=potenciaLED41/(18.42/100);
potenciaLED41=potenciaLED41*0.23;
potenciaLED41=5.3*10^2*potenciaLED41*exp(-5.3*10^2*0.2/10);


Ef41=PlankConstJ*LightConst/wavelength41;
Gop41=potenciaLED41/Ef41;


Conduct41=1./(ResisD3_41*AreaC/LargoC);
DeltaConduct41=Conduct41-Conductmin;

xD41=DeltaConduct41./(ElectronC*Gop41);

mc41=max(xD41);


%%
f1=figure(1);
loglog(Ilum1,resist1)
hold on
loglog(Ilum2,resist2)
loglog(Ilum3,resist3)
loglog(Ilum4,resist4)
loglog(Ilum5,resist5)
grid on
xlabel("Intensidad Luminica Incidente [W]")
ylabel("Resistividad del foto-conductor [\Omega cm]")
legend("Rojo - 700nm", "Naranja - 605nm", "Amarillo - 580nm", "Verde - 530nm" , "Azul - 472.5nm")

