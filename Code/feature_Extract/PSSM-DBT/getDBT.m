function A = getDBT(propertys)
%GETDBT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
L= size(propertys,1);
A=[];
D=5;
for d=0:D
    t=L-d;
    for i=1:20
        for j=1:20
            sum=0.0;
            for k=1:t
                sum=sum+propertys(k,i)*propertys(k+d,j);
                
                
            end
            f=sum/t;
            A=[A,f];
        end
    end
end





