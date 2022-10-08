%--For Döngüsü
% Örnek 1
s = 5;
for i = 1:s % 1 ve 5 dahil
    disp(i);
end

% Örnek 2
for v = 1.0:-0.2:0.0 % 1.0'dan 0.0'a -0.2 eklenerek ilerler.
    disp(v)
end

% Örnek 3
n = 5;
A = zeros(n); % 5x5 0'lardan oluşan matris

for i = 1:n
    for j = 1:n
        A(j,i) = 1/(j+i-1);
    end
end
disp(A);
