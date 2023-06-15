% Q1
img1 = imread('/MATLAB Drive/Lab1_Image/img1.png');
imshow(img1)
img1_n4 = bwperim(img1, 4);
peri_4 = sum(sum(bwperim(img1, 4)));

img1_n8 = bwperim(img1, 8);
peri_8 = sum(sum(bwperim(img1, 8)));

disp(['Perimeter using 4-connected neighborhoods: ', num2str(peri_4)]);
disp(['Perimeter using 8-connected neighborhoods: ', num2str(peri_8)]);
subplot(1, 2, 1), imshowpair(img1, img1_n4, 'montage'); title("4 neighborhoods");
subplot(1, 2, 1), imshowpair(img1, img1_n8, 'montage'); title("8 neighborhoods");

%Q2
img2 = imread('/MATLAB Drive/Lab1_Image/img2.png');
imshow(img2);
binary_image = im2bw(img2);
 
threshold_01 = im2bw(img2, 0.2);
threshold_04 = im2bw(img2, 0.4); 
threshold_08 = im2bw(img2, 0.8); 
 
subplot(2,2,1), imshow(binary_image); title('Binray Image');
subplot(2,2,2), imshow(threshold_01); title('Threshold 0.1');
subplot(2,2,3), imshow(threshold_04); title('Threshold 0.4');
subplot(2,2,4), imshow(threshold_08); title('Threshold 0.8');

%Q3
img2 = imread('/MATLAB Drive/Lab1_Image/img2.png');
binary_image = im2bw(img2, 0.5);
 
cc = bwconncomp(binary_image,4);
number  = cc.NumObjects;
number;
%Q4
img2 = imread('/MATLAB Drive/Lab1_Image/img2.png');
imshow(img2);
h = imdistline(gca,[10 70],[10 70]);
distance = sqrt( (10-70)^2 + (10-70)^2 );
fprintf('%i\n', distance);

%Q5
img1 = imread('/MATLAB Drive/Lab1_Image/img1.png');
img2 = imread('/MATLAB Drive/Lab1_Image/img2.png');

add = imadd(img1,img2);
sub = imsubtract(img1,img2);
mul = immultiply(img1,img2);
div = imdivide(img1,img2);

subplot(2,2,1), imshow(add); title('a. Addition ');
subplot(2,2,2), imshow(sub); title('b. Subtraction');
subplot(2,2,3), imshow(mul); title('c. Multiplication');
subplot(2,2,4), imshow(div); title('d. Division');

%Q6
img1 = imread('/MATLAB Drive/Lab1_Image/img1.png');
img2 = imread('/MATLAB Drive/Lab1_Image/img2.png');

and = bitand(img1,img2);
or = bitor(img1,img2);
not1 = bitcmp(img1);
not2 = bitcmp(img2);
 
subplot(2,2,1), imshow(and); title('a. AND  ');
subplot(2,2,2), imshow(or); title('b. OR');
subplot(2,2,3), imshow(not1); title('c. NOT img1');
subplot(2,2,4), imshow(not2); title('c. NOT img2');

%Q7
img3 = imread('/MATLAB Drive/Lab1_Image/img3.png');
L = 2 ^ 8;                      
neg = (L - 1) - img3;
 
subplot(1, 2, 1),  imshow(img3); title("Original image");
subplot(1, 2, 2),  imshow(neg); title("Negative Image");

%Q8
img4 = imread('/MATLAB Drive/Lab1_Image/img4.jpg');
img4=double(img4);
show=bitget(img4,1);
subplot(2,4,1);imshow((show));title('Bit plane 1');
show=bitget(img4,2);
subplot(2,4,2);imshow(show);title('Bit plane 2');
show=bitget(img4,3);
subplot(2,4,3);imshow(show);title('Bit plane 3');
show=bitget(img4,4);
subplot(2,4,4);imshow(show);title('Bit plane 4');
show=bitget(img4,5);
subplot(2,4,5);imshow(show);title('Bit plane 5');
show=bitget(img4,6);
subplot(2,4,6);imshow(show);title('Bit plane 6');
show=bitget(img4,7);
subplot(2,4,7);imshow(show);title('Bit plane 7');
show=bitget(img4,8);
subplot(2,4,8);imshow(show);title('Bit plane 8');


%Q9
img4 = imread('/MATLAB Drive/Lab1_Image/img4.jpg');
stretched_Image = imadjust(img4,[0.03,0.60],[0.0,1.0]);
 
subplot(2,2,1), imshow(img4), title('Original Image');
subplot(2,2,2), imshow(stretched_Image), title('Strethced Image');
subplot(2,2,3), imhist(img4), title('Histogram of Original Image');
subplot(2,2,4), imhist(stretched_Image), title('Histogram of Stretched Image');

%Q10
img2 = imread('/MATLAB Drive/Lab1_Image/img2.png');
Id = im2double(img2);
 
output1 = 2*log(Id+1);
output2 = 2*(Id.^1.5);
output3 = 2*(Id.^3.0);
 
subplot(2,2,1), imshow(img2); title('Orginal');
subplot(2,2,2), imshow(output1); title('Logarithmic');
subplot(2,2,3), imshow(output2); title('Power-law r = 1.5');
subplot(2,2,4), imshow(output3); title('Power-law r = 3');

