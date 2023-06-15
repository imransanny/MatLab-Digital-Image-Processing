%sum 2 digit 
6+7

%format long;
format long;
11/7

sqrt(7)
sin(pi/6)
log10(12)

%deafult function
who %what variable are define in this workspace
whos %detais of the variable

%MATRIX calculation
a = [1,2,3,4; 3 6 12 4; -3 7 -7 6;]
a(2,4) % (2,4)meaning 2  row 4 column
a(2) % second number of the matrix top to bottom
a([6 10 11]) %show 6th 10th and 11th position number
2:3:19 %loop stating node 2 and ending node 19 next value increase 3.suppose, 2,5,8,9 cell values 
a(2, 1:3) %2nd rown 1 to 3 column
a(3,:) %3rd row all values

b = [4 3 6; 4 2 7; 7 12 5; -3 -4 1]
a*b %matrix multiplication
a.^2 
x= [1 2 3; 4 5 6; 7 8 9]
fliplr(x) %flip left right
rot90(x) %rotate 90 degree 
reshape(a, 2, 6) % a matrix is reshape 2 row 6 column
reshape(a, 4, 3) % 4 row 3 column
zeros(4) % 4*4 0 matrix crease
zeros(4,5) % 0 matrix 4 row 4 column
zeros(2,3,4) % 0 matrix 2 row 3 column 4 times
plot(x, tan(X)) %x is x axis tan(x) y axis





