 % Vitas Novickas
 % Grupė: edif-25/2
 % Data: 2026-09-21


 x=1:32;
 y=x.^2;


 plot(x, y, 'o-r',x,y/3,'xb')
 title('dvi funkcijos')
 xlabel('X-ai')
 ylabel('F_1 (-o-) | f_2 (-o-)')


% 1. Kintamasis N = paskutinis studento ID skaitmuo
N = 1;

% 2. Vektorius: pirmasis N+1, paskutinis N+4, zingsnis 0.5
v = N+1 : 0.5 : N+4;
disp('Vektorius v:');
disp(v);

% 3. 3x3 matrica A: pirmasis elementas N, kiekvienas tolesnis +1
A = reshape(N : N+8, 3, 3)';
disp('Matrica A:');
disp(A);

% 4. Poaibiu atrinkimas pagal schemas a), b), c)
% a) viena laste - 3 eilute, 2 stulpelis
a_sel = A(3,2);
disp('a) A(3,2) =');
disp(a_sel);

% b) blokas - 2-3 eilutes, 1-2 stulpeliai
b_sel = A(2:3, 1:2);
disp('b) A(2:3,1:2) =');
disp(b_sel);

% c) keturi kampai - 1 ir 3 eilutes, 1 ir 3 stulpeliai
c_sel = A([1 3], [1 3]);
disp('c) A([1 3],[1 3]) =');
disp(c_sel);

%% 5. Vektoriaus prijungimas prie matricos A
v_row = v(1:3);              
A_extended = [A; v_row];
disp('Matrica A su prijungtu vektoriumi (papildoma eilute):');
disp(A_extended);
