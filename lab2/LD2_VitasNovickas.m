 % Vitas Novickas
 % Grupė: edif-25/2
 % Data: 2026-09-28

a = 5:2:34;
b = exp(a);
c = a./b;

c_col = c';
disp(c_col);

% 2. Dvimaciai masyvai

A = [pi/2, 3; log(2), 2*pi];


B = [A; A(1,1) A(1,2)];
disp(B);


eiluciu_sumos = sum(B, 2);
disp(eiluciu_sumos);

% 3. Signalas su triuksmu
Amp = 5; f = 5; sigma = 1.5; U1 = 3; U2 = 2;
t = 0:0.001:1;
s = Amp * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;                      


virs = x(x > U1);


xf = x;
xf(abs(xf) < U2) = 0;


dydis_x = size(x);              


dydis_virs = size(virs);        

xf_max = max(xf);
xf_min = min(xf);

disp(dydis_x); disp(dydis_virs); disp(xf_max); disp(xf_min);

%%
% P1. Masyvo elementu indeksavimas

A = input('Iveskite 12 skt A su []  (pvz. [1 2 3 4 5 6 7 8 9 10 11 12]): ');
 
B = [A(10:end), A(1:9)];
 
disp('vektorius B yra:');
disp(B);
