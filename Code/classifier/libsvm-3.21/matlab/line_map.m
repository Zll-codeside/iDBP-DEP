function Mapping_X = line_map(X)


col_x = size(X,2);
Mapping_X = [];
for i=1:col_x
	col_v=[];
	col_v = (X(:,i)-min(X(:,i)))/(max(X(:,i))-min(X(:,i)));
	Mapping_X = [Mapping_X,col_v];
end