%--if-elseif-else
% Örnek 1
x = 10;
minVal = 2;
maxVal = 6;

if (x >= minVal) && (x <= maxVal)
    disp('Deger belirtilen araliktadir.')
elseif (x > maxVal)
    disp('Maksimum deger asildi.')
else
    disp('Minimum degerin altinda kaldi.')
end

% Örnek 2
A = ones(2,3);
B = rand(2,3);

if isequal(size(A), size(B))
    % ilk satırı A, ikinci satırı B matrisinden oluşuyor.
    C = [A; B];
    disp(C);
else
    disp('A and B are not the same size.')
    C = [];
    disp(C);
end
