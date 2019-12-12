function P=PYH_6(PR,Ma)
%function P=SUBSmatrixEstrazione(PR,Ma)
%PR: protein
%Ma substitution matrix

%alfabeto=['A' 'R' 'N' 'D' 'C' 'Q' 'E' 'G' 'H' 'I' 'L' 'K' 'M' 'F' 'P' 'S' 'T' 'W' 'Y' 'V'];
%alfabeto=['C' 'S' 'T' 'P' 'A' 'G' 'N' 'D' 'E' 'Q' 'H' 'R' 'K' 'M' 'I' 'L' 'V' 'F' 'Y' 'W'];
alfabeto=['A' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'K' 'L' 'M' 'N' 'P' 'Q' 'R' 'S' 'T' 'V' 'W' 'Y'];
for j=1:length(PR)
    if find(PR(j)==alfabeto)
        P(j,:)=Ma(find(PR(j)==alfabeto),:);
    else
        P(j,1:6)=0;
    end
end