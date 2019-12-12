X_1=[DDE,PSSM_DBT,PSSM_DWT,feature_NMBAC];
X_2=[DDE186,PSSM_DBT_186,PSSM_DWT_186,feature_NMBAC_186];
X=[X_1;X_2];

%% 


X=line_map(X);
XX=[];
l=size(X,2);

for i=1:size(X,2)
    t=X(:,i);
    t=t';
    mapdata=mapstd(t,0,1);
    t=mapdata';
    XX=[XX,t];
end
XX_1=XX(1:1075,:);
XX_2=XX(1076:end,:);
X_S=ft_select(XX, ftRank,best_dim);
%% 

Train_X=X_S(1:1075,:);
Test_X=X_S(1076:end,:);

Train_label = label;
Test_label = label_186;
%% 

cg_str=['-c ' num2str(bestc) '-g'  num2str(bestg) ' -b 1'];
model1=svmtrain(Train_label,Train_X,cg_str);
%% 

[Predict_label_f,accuracy,Scores_f]=svmpredict(Test_label,Test_X,model1,'-b 1');

[ACC,SN,Spec,PE,NPV,F_score,MCC] = roc( Predict_label_f,Test_label );


%AUC
[Y_p,X_p,THRE,AUC,OPTROCPT,SUBY,SUBYNAMES] = perfcurve(Test_label,Scores_f(:,1),'1');