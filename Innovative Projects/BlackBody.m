c=3*10^8; % speed of light in vaccum
h=6.625*10.^-34; %  Planck constant 
k=1.38*10.^-23; %   Boltzmann constant
T=[ 500 600 700 ]; % Temperatures in Kelvin
Lam=(0.0:0.01:20).*1e-6; 

for i=1:3
    
%------------Wiens Displacement Law--------------------------------------%

I1(:,i)= ((2*h*c*c)./(Lam.^5)).*(exp(-(h*c)./(Lam*k*T(i))));

%------------Planks Law--------------------------------------------------%

I2(:,i)=(2*h*c*c)./((Lam.^5).*(exp((h.*c)./(k.*T(i).*Lam))-1));

%------------------------------------------------------------------------%

plot(Lam,I1(:,i))
hold on
plot(Lam,I2(:,i),'r')

  text(.55e-5,.7e8,'T=500K')
  text(.5e-5,2e8,'T=600K')
  text(.8e-5,5e8,'T=700K')
  
  legend('Wiens Law','Plancks Law')

  xlabel('\lambda')
  ylabel('Intensity')
  title('Blackbody Radiation')
  
end