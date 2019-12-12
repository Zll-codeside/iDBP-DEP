function [ AC ] = BAC( P,seq, lg )
%P is the Physical and chemical properties of sequence
%seq is the sequence
%lg is the lag, it denotes the distance between one residue and its neighbors

n=size(P,1);
type_n = size(P,2);
clear AC
for lag=1:lg
    for j=1:type_n
        A=1/(n-lag);
        AC(lag,j)=0;
        for i=1:n-lag
            AC(lag,j)=AC(lag,j)+(P(i,j))*(P(i+lag,j));
        end
        AC(lag,j)=A*AC(lag,j);
    end
end
AC(find(isnan(AC)))=0;
AC(find(isinf(AC)))=0;
AC=single(AC(:));


L = length(seq);
protein_residue_type_index=['A' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'K' 'L' 'M' 'N' 'P' 'Q' 'R' 'S' 'T' 'V' 'W' 'Y'];
residue_type_number_index=1:1:20;
%%%% composition descriptors
F_A = zeros(1,20);
for i=1:20
	num_a = length(regexp(seq,protein_residue_type_index(i)));
	F_A(i)= num_a/L;
end
F_A = F_A';
AC = [AC;F_A];


