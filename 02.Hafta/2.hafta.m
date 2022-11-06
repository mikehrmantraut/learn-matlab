% Diziler ve Matrisler
A = [1 2 3; 2 0 4; 0 8 5]
size(A)                      % [N,M]=size(A), NxM matris

A(1,1)                       % matrisin A11 elemanı
A(2,3)                       % matrisin A23 elemanı
A(:,2)                       % matrisin 2.sütunu
A(3,:)                       % matrisin 3.satırı
A'                           % matrisin transpozesi

B = zeros(3,3)               % 3x3'lük sıfırlardan oluşan matris
C = ones(2,4)                % 2x4'lük birlerden oluşan matris
D = eye(4,4)                 % 4x4'lük birim matris
E = linspace(0,100,5)        % 0 ile 100 arasını 5 parçaya böler

% operatörler ve ifadeler
a = [1 2 5];
b = [4 -5 1];
a+b
a.*b
a./b
a.\b
a.^2
2.^a
a+10

A = [1 2; 3 4]
[A, A.^2; A^2, A*A]

% Fonksiyonlar
x = [0, pi/4, pi/3, pi/2, pi];
sin(x)

x = [2.1, 2.8, -3.1, -3.5, 4.5];
y = exp(x)
z = log(y)

[fix(x); floor(x);ceil(x);round(x)]

% Örnek
format long;
N=8; n = 1:N;
sum(1./2.^n)

1-2^(-N)

% Örnek-2
format long;
N=8; n=1:N;
y = cumsum(1./2.^n);
z = 1-1./2.^n;
fprintf('%d %10.8f %10.8f\n', [n;y;z]);

% rastgele sayılar, min, max, mean, std, sort
x = randn(5,3)                   % sıfır ortalamalı, 
                                 % gauss rastgele sayılarından oluşan,
                                 % 5x3'lük matris

min(x), max(x), mean(x), std(x)  % sütun bazlı hesaplama
[m, i] = min(x), min(min(x))
m
i

sort(x)                          % her sütunu artan sırada sıralar
sort(x, 'descend')               % her sütunu azalan sırada sıralar

[x2,i2] = sort(x(:,2), 'descend')% sadece 2.sütunu azalan sırada sıralar

% Fonksiyon Tanımlama
f = @(x) exp(0.5*x).*sin(5*x)
g = inline('exp(0.5*x).*sin(5*x)')

% örnek f(x) = e^-ax * sin(bx)

% metod 1: Önce a, b tanımlanır, sonra da f
a = 0.5;
b = 5;
F = @(x) exp(-a*x).*sin(b*x)

% metod 2: 
F = @(x,a,b) exp(-a*x).*sin(b*x)

% Grafikler
f = @(x) exp(-0.5*x).*sin(5*x);
%fplot(f,[0,5])                    % [0,5] aralığı üzerinde çizer.

x = linspace(0,5,101);
y = f(x);
%plot(x,y,'b-')                    % mavi düz çizgi
%xlabel('x'); ylabel('y'); grid;
%title('f(x) = e^{-0.5x}sin(5x)');

% aynı plota birden fazla grafik
x5 = x(1:5:end)
y5 = y(1:5:end)
%plot(x,y,'b-',x5,y5,'r.')         % kırmızı nokta

e = exp(-0.5*x);
%plot(x,y,'b-',x,e,'r--',x,-e,'m--');
%xlabel('x'); ylabel('y'); grid;
%title('f(x)=e^{-0.5x}sin(5x)');
%legend('e^{-0.5x}sin(5x)', 'e^{-0.5x}', ...
%    '-e^{-0.5x}','location','SE');

% Fonksiyonun maksimum ve minimumu
% min fonksiyonunu kullanarak bir eğrinin minimumunu bulmak
f = @(x) x.^4 - 4*x;
x = linspace(0, 1.5, 151);
[f0, i0] = min(f(x));             % f0 y=f(x) dizisinin minimumudur
x0=x(i0);                         % i0 minimumun dizideki indeksidir                              
%plot(x, f(x),'b-', x0, f0, 'ro'); % x0 y'nin minimumdaki x değeridir
%xlabel('x'); grid;
%legend('f(x)=x^4-4x','(x0,f0)');

% fminbnd fonksiyonunu kullanarak f(x)'in minimumunu bulmak
f = @(x) x.^4 - 4*x;              % [0, 1.5] aralığındaki
[x1,f1] = fminbnd(f,0,1.5);       % f(x)'in minimumunu bulur.

% fzero fonksiyonunu kullanarak f(x)'in minimumunu bulmak
F = @(x) 4*x.^3 - 4;
x2=fzero(F,0.5);
f2=f(x2);
[x0,x1,x2;f0,f1,f2]


% Karakterler ve diziler (strings)
c = 'A'                    % string karakterlerden oluşan dizidir
x = double(c)              % ASCII koduna çevirir
char(x)                    % ASCII kodunu karaktere çevirir
class(c)                   % sınıfı 'char' dır.

s = 'ABC DEFG'
x = double(s)
char(x)
size(s)
class(s)

% dizilerin sıralanması
s = ['Albert', 'Einstein']
s = ['Albert', ' Einstein']
s = ['Albert ', 'Einstein']
size(s)                   % boyutunu verir

% dizilerin dikey sıralanması
s = ['Apple    '; 'IBM      '; 'Microsoft']
% en uzun stringin uzunluğuna eşitleme yapılmalıdır
% yoksa hata verir
% eşitleme yapmak için diğer stringlere boşluklar eklenmelidir
size(s)

% dikey sıralama için char() kullan
% yatay sıralama için [] kullan
s = char('Apple', 'IBM', 'Microsoft')

% num2str sayıyı stringe çevirir
a = [143.87, -0.0000325, -7545]';
s = num2str(a)
s = num2str(a,4)                   % maksimum 4 basamak
s = num2str(a, '%12.6f')           % virgülden önce 12, sonra 6 basamak

% dizilerin karşılaştırılması
s1 = 'short'; s2='shore';
s1 == s1                           % 1 1 1 1 1
s1 == s2                           % 1 1 1 1 0
% matris boyutları aynı olmalıdır.

%hem eşit uzunluktaki hem de eşit uzunlukta olmayan dizileri karşılaştırmak
%ve ikili bir sonuç almak için strcmp kullanılmalıdır

s1='short'; s2='shore';
strcmp(s1,s1)

strcmp(s1,s2)

s1='short'; s2='long';
strcmp(s1,s2)

% Hücre dizileri (Cell Arrays)

A = {'Apple';'IBM'; 'Microsoft'}; %hücre
B = [1 2; 3 4]                     %matris
C = @(x) x.^2 + 1;                 %fonksiyon
D = [10 20 30 40 50];

c = {A, B; C, D}                   %2x2 hücre dizisi

%cellplot(c)                       %hücre dizisinin görsel gösterimi

c{1,1}
c{2,1}

c{1,1}{1}
c{1,1}{2}

c{1,2}
c{2,2}

c{1,1}{3}(6)                         % Microsoft'un 6.elemanı 's'

x=[1,2,3];
c{2,1}(x)                            % 2,1'deki fonksiyona 1,2,3 değerlerini girer

%fplot(c{2,1}, [0,3])

% hücre dizinleme () ile yapılır
c(2,2)                     % bir hücredir

% içerik dizinleme {} ile yapılır
c{2,2}

% fprintf('format_specs', variables); yazdırma formatı özellikleri,değişkenler
%fprintf('%10.6f', 100*pi)

% örnek
a=[1;-2;3;4];
b=[10;20;-30;40];
c=[100;200;300;-400];
%fprintf('%9.3f %9.3f %9.3f', [a,b,c]');

% örnek 2
a=[1;-2;3;4];
b=[10;20;-30;40];
s={'a','bb','ccc','dddd'};
for i=1:4
    fprintf('%9.3f %9.3f %4s\n', a(i), b(i), s{i});
end



