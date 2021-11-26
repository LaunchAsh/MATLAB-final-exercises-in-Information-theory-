function Table_function(medium,variance)
%ham ve bang cat am
%--------------------------------------------------------------------------
%Table_function(medium,variance)
%medium = mang gia tri trung binh
%variance = mang gia tri phuong sai
data = [medium',variance'];             %gia tri trung binh va phuong sai
col = {'Medium_valve','Variance_valve'};%ten cac cot trong bang
row = {'1st','2nd','3rd','4th','5th'};  %ten cac hang trong bang
figure(6);
%bang thong ke gia tri trung binh va phuong sai
%col: ten cot Columnnme
%Position: can le trai 20, phai 20, chieu rong bang 500, chieu dai bang 400
%Columnwith: chieu rong tung cot
%data: cac gia tri trung binh va phuong sai
t = uitable('Columnname',col,'Rowname',row,'Position',[20,20,500,400],'Columnwidth',{221},'data',data);
t.FontSize = 30;%kich thuoc chu
end
