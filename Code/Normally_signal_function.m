function [Y] = Normally_signal_function(y) 
%ham nay lam nhiem vu chuan hoa tin hieu dau vao
%--------------------------------------------------------------------------
%[Y] = Normally_signal_function(y)
%Y = tin hieu sau khi chuan hoa
Y = y/(max(abs(y)));                %chuan hoa tin hieu
end