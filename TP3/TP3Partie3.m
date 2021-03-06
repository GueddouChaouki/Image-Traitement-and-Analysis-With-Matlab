X1= imread('cameraman.tif');
X1 = im2double(X1);
h1 = fspecial('average',[3 3]);
Y2= imfilter(X1,h1,'replicate');
AffichageFiltrage(X1,h1);

%%
%un filtre moyenneur de taille 3 ? 3
h1 = fspecial('average',[3 3]);
Y2=imfilter(X1,h,'replicate');
AffichageFiltrage(X1,h1);

%%
%un filtre moyenneur de taille 5 ? 5
h1 = fspecial('average',[5 5]);
Y2=imfilter(X1,h,'replicate');
AffichageFiltrage(X1,h1);
%%
%un filtre moyenneur de taille 7 ? 7
h = fspecial('average',[7 7]);
Y2=imfilter(X1,h,'replicate');
AffichageFiltrage(X1,h1);
%%
%Filtre Gaussien de taille 15 ? 15 v= 2
h = fspecial('gaussian',[15 15],2);
Y2=imfilter(X2,h,'replicate');
Y3=imfilter(X3,h,'replicate');

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))% -11.0206
PSNR=-10*log10(std2(X1-Y3))% -11.2019
AffichageFiltrage(X1,h);
%%
%Filtre Gaussien de taille 15 ? 15 v = 1.5
h = fspecial('gaussian',[15 15],1.5);
Y2=imfilter(X2,h,'replicate');
Y3=imfilter(X3,h,'replicate');

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))% -10.4297
PSNR=-10*log10(std2(X1-Y3))% -10.7060
AffichageFiltrage(X1,h);
%%
%Filtre Gaussien de taille 15 ? 15   v= 1
h = fspecial('gaussian',[15 15],1);
Y2=imfilter(X2,h,'replicate');
Y3=imfilter(X3,h,'replicate');

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))% -9.4668
PSNR=-10*log10(std2(X1-Y3))% -10.1056
AffichageFiltrage(X1,h);
%%
%Filtre Gaussien de taille 15 ? 15   v=0.5
h = fspecial('gaussian',[15 15],0.5);
Y2=imfilter(X2,h,'replicate');
Y3=imfilter(X3,h,'replicate');

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))% -9.3168
PSNR=-10*log10(std2(X1-Y3))% -11.3906

AffichageFiltrage(X1,h);
%%
%Filtre median :
Y2=medfilt2(X2,[3,3]);
Y3=medfilt2(X3,[3,3]);

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))% -9.9435
PSNR=-10*log10(std2(X1-Y3))% -9.6729

AffichageFiltrage(X1,h);
%%
%Filtre median :
Y2=medfilt2(X2,[5,5]);
Y3=medfilt2(X3,[5,5]);

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))% -11.0209
PSNR=-10*log10(std2(X1-Y3))%-11.1892

%%
%Filtre median :
Y2=medfilt2(X2,[7,7]);
Y3=medfilt2(X3,[7,7]);

subplot(2,3,1);imshow(X1);title('Image original');
subplot(2,3,2); imshow(X2); title('un bruit blanc Gaussien');
subplot(2,3,3),imshow(Y2); title('filtre moyenneur X2');
subplot(2,3,4); imshow(X3); title('un bruit poivre et sel');
subplot(2,3,5),imshow(Y3); title('filtre moyenneur X3');

PSNR=-10*log10(std2(X1-Y2))%-11.6762
PSNR=-10*log10(std2(X1-Y3))% -11.8415