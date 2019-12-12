
feature_NMBAC = [];
P_feature=[];
N_feature=[];

load('phy_6.mat');
%P_A

for i=1:size(Sequence)
    SEQ=Sequence(i);
	SEQ=cell2mat(SEQ);
    P=PYH_6(SEQ,phy_6);
	FF=BAC(P,SEQ,30);
    P_feature(i,:)=FF;
	kd = mod(i,100);
	if kd==0
		prin = i;
		prin
	end
end


for i=1:size(Sequence)
    SEQ=Sequence(i);
	SEQ=cell2mat(SEQ);
    P=PYH_6(SEQ,phy_6);
	FF=BAC(P,SEQ,30);
    N_feature(i,:)=FF;
	kd = mod(i,100);
	if kd==0
		prin = i;
		prin
	end
end


feature_NMBAC = [P_feature;N_feature];

Positive_label = ones(size(P_feature,1),1);
Negative_label = -1*ones(size(N_feature,1),1);

label = [Positive_label;Negative_label];



