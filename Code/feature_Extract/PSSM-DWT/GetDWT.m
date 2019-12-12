function A = GetDWT(propertys)

n_propertys = size(propertys,1);

A = [];
for i=1:n_propertys
	I_s = propertys(i,:);
	Fea = [];
	Fea = EstraggoConDWT(I_s,4);
	A = [A,Fea];
end