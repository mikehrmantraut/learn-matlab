% Değişkenler, Sabitler, Anahtar Kelimeler

x = 3;                          % basit skaler
y = [4,5,6];                    % uzunluğu 3 olan satır vektör
z = [4;5;6];                    % uzunluğu 3 olan sütun vektör
A = [1,2,3;4,5,6];              % 2x3'lük matris
s = 'abcd efg';                 % karakter dizisi (string)
C = {'abc', 'defg', '123-456'}; % 1x3'lük hücre dizisi (cell array)

disp(class(C));                 % nesnenin türünü verir
disp(size(C));                  % nesnenin boyutunu verir

% Kompleks Sayılar

a = 3+4i;                       % ya da 3+4j, 3+4*i, 3+4*j
b = real(a);                    % a'nın reel kısmı
c = imag(a);                    % a'nın sanal kısmı
R = abs(a);                     % a'nın mutlak değeri 
theta = angle(a);               % a'nın radyan cinsinden argümanı
w = conj(a);                    % kompleks eşlenik w = 3-4i
isreal(a);                      % a'nın reel veya kompleks olma testi

% Girdi - Çıktı Fonksiyonları disp, input
x = 10;
disp('the value of x is:');
disp(x);

%x = input('enter x: ');              % sayısal girdi
%y = input('enter string: ', 's');    % dizi girdisi

% Diziler ve Matrisler

% 1.yol ( sıradan üstelleştirme ^ )
x = [2,-3,4,1,5,8];
y = zeros(size(x));

for n=1:length(x)
    y(n) = x(n)^2
end

% 2.yol ( eleman bazında üstelleştirme .^ )
x = [2,-3,4,1,5,8]; 
y = x.^2;

x = [0 1 2 3 4 5];             % satır vektör
x = 0:5;                       % satır vektör

x = [0 1 2 3 4 5]'             % sütun vektör 
x = (0:5)'                       % sütun vektör

% ' operatörü veya transpoze operatörü satır vektörü sütun vektöre çevirir.
% ve tam tersi de doğrudur.
% Uyarı: ' aslında eşlenik transpozedir, 
% eşleniksiz transpoze için .' kullanılmalıdır.

z = [i; 1+2i; 1-i]
z.'
z'
(z.')'

% linspace
x = 0:0.2:1
x = linspace(0,1,6)
x = 0:0.3:1
x = 0:0.4:1
x = 0:0.7:1

% dizi elemanlarına ulaşım
x = [2,5,-6,10,3,4]
x
length(x)            % x'in uzunluğu
size(x)              % x'in boyutu
x(1)                 % ilk eleman
x(3)                 % üçüncü eleman
x(end)               % son eleman
x(end-3:end)         % son 4 eleman
x(3:5)               % 3'ten 5'e (ikisi de dahil)
x(1:3:end)           % 3 girişte 1
x(1:2:end)           % 2 girişte 1
x(end:-1:1)          % sondan başa
x([3,1,5])           % [x(3),x(1),x(5)]
x(end+3) = 8         % otomatik hafıza ataması yapar

% Otomatik hafıza ataması ve atamayı kaldırma (de-allocation)
clear x
x(3)=-6
x(6)=4
x(end)=[]           % son girdiyi sil
x=[2,5,-6,10,3,4]
x(3)=[]             % üçüncü girdiyi sil

% Ön atama (pre-allocation)
clear x
x = zeros(1,6)
x = zeros(6,1)

% Dinamik atama (dynamic allocation)
clear x 
for k=[3,7,10]
    x(k)=3+0.1*k;
    disp(x)
end

x = zeros(1,10);
for k=[3,7,10]
    x(k)=3+0.1*k;
    disp(x)
end

% Örnek
f0=27.5;
k=0:87;
f=f0*2.^(k/12);
%figure;plot(k,f)

ka = 0:12:87;
fa = f(ka+1);
figure;plot(k,f,ka,fa,'ro')
