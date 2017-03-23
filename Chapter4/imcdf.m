function result = imcdf(file_name)

%
% This function returns cumulative distribution of image.
%
% Author : Yoonjae, Cho
% Email  : yoonjae.cho92@gmail.com
% Github : https://github.com/yoon-jae
%

x = imread(file_name);
[h, w] = size(x);
p = zeros(256);

for i = 1:h
    for j = 1:w
        p(x(i,j)) = p(x(i,j)) + 1;
    end
end

p = p / (256 * 256);
c = zeros(256);

for i = 1:256
    if i == 1
        c(i) = p(i);
    else
        c(i) = c(i-1) + p(i);
    end
end

plot(0:255, c);
result = c;