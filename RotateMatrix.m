clear all
clc
%To rotate a matrix 90 degrees in-place - Take its transpose and reverse the columns
a = eye(ceil((3 + (9-3)*rand()))); %Generate random matrix


a(1,2) = a(1,2)+ ceil(4*rand());
a(2,ceil(3*rand())) = a(2,1) + ceil(5*rand());
a(3,2) = a(3,3) + 8;
a = a + ceil(10*rand());

a

for i = 1:1:size(a,1)
    for j = 1:1:i
        x = a(i,j);
        a(i,j) = a(j,i);
        a(j,i) = x;
    end
end
%a is now transposed in-place

%To reverse the columns

if mod(size(a,1),2) ~= 0 %Odd number of rows and columns
    for i = 1:1:ceil(size(a,1)/2 - 1) %Select rows number 1 to n/2 - 1
        for j = 1:1:size(a,2)
            x = a(i,j);
            a(i,j) = a((size(a,1) + 1 - i),j);
            a(size(a,1) + 1 - i,j) = x;
        end
    end
else %Even number of rows and columns
    for i = 1:1:ceil(size(a,1)/2) %Select rows number 1 to n/2
        for j = 1:1:size(a,2)
            x = a(i,j);
            a(i,j) = a((size(a,1) + 1 - i),j);
            a(size(a,1) + 1 - i,j) = x;
        end
    end
end



    
    
    



a



