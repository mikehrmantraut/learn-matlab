%--Hazır Fonksiyonlar
% Birlerden oluşan 2x3 matris
A = ones(2,3);
disp(A);

% Sıfırlardan oluşan 3x3 matris
B = zeros(3,3);
disp(B);

% 0-1 arasından rastgele sayılardan oluşan 3x2 matris
C = rand(3,2);
disp(C);

% Birim matris
D = eye(3,3);
disp(D);

% Köşegen matris
v = [2 1 -1 -2 -5];
E = diag(v);
disp(E);

F = randi(10, 5);
disp(F);
x = diag(F);
disp(x);
