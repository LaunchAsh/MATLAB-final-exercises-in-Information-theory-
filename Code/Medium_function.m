function medium = Medium_function(x)
%ham tinh gia tri trung binh
%--------------------------------------------------------------------------
%medium = Medium_function(x)
medium = 0; %khoi tao gia tri trung binh
%Tinh gia tri trung binh
for i = 1:length(x)
    medium = medium+x(i);
end
medium = medium/length(x);
end