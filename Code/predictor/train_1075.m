 %SVM parameter

X=[DDE,PSSM_DBT,PSSM_DWT,feature_NMBAC];
X=line_map(X);

[bestacc,bestc,bestg]=SVMcg(label,X,-5,5,-5,5,5,1,1,1,2 );


%feature selection 

param.kerType = 2;
param.rfeC = bestc;
param.rfeG = bestg;
param.useCBR = true;
param.Rth = 0.9;
[bestacc1,best_dim,ftRank,ftScore]=optem_Dim(X,label,param);


%Jackknife test

X_S=ft_select(X, ftRank,best_dim);
cg_str=['-c ' num2str(bestc) '-g'  num2str(bestg) ' -b 1'];

[Predict_label,Scores] = JackknifeValidation(X_S,label,cg_str);

ACC=[];
SN=[];
Spec=[];
PE=[];
NPV=[];
F_score=[];
MCC=[];
[ACC(1),SN(1),Spec(1),PE(1),NPV(1),F_score(1),MCC(1)] = roc( Predict_label,label );
mean_acc=mean(s);
std_acc = std(ACC);
mean_sn=mean(SN);
std_sn=std(SN);
mean_Spec=mean(Spec);
std_Spec=std(Spec);
mean_pe=mean(PE);
std_pe=std(PE);
mean_npv=mean(NPV);
std_npv=std(NPV);
mean_F_score=mean(F_score);
std_F_score=std(F_score);
mean_mcc=mean(MCC);
std_mcc=std(MCC);
[Y1,X1,THRE,mean_AUC,OPTROCPT,SUBY,SUBYNAMES] = perfcurve(label,Scores(:,1),'1');
