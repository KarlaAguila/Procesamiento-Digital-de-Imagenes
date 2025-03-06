%cargar las imágenes
bin1=imread("2diags.png");
bin2=imread("2diags2.png");
bin3=imread("2circles.png");

%Convertir las imágenes a binarias
img1_gray=rgb2gray(bin1);
img1_bin=imbinarize(img1_gray);
img2_gray=rgb2gray(bin2);
img2_bin=imbinarize(img2_gray);
img3_gray=rgb2gray(bin3);
img3_bin=imbinarize(img3_gray);

%Operaciones Lógicas
%AND
img_and = img1_bin & img2_bin & img3_bin;
%OR
img_or = img1_bin | img2_bin | img3_bin;
%XOR (aplicamos XOR entre bin1 y bin2 primero luego con bin3)
img_xor = xor(xor(img1_bin, img2_bin), img3_bin);

%Visualizar los elementos
figure;
subplot(2,3,1), imshow(bin1), title('Binaria 1');
subplot(2,3,2), imshow(bin2), title('Binaria 2');
subplot(2,3,3), imshow(bin3), title('Binaria 3');
subplot(2,3,4), imshow(img_and), title('AND');
subplot(2,3,5), imshow(img_or), title('OR');
subplot(2,3,6), imshow(img_xor), title('XOR');