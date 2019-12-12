function [Predict_label,Acc,Scores,s,tt] = K_fold(X,label,cg_str)


loocv_n = size(X,1);%1075
combin = [label,X];%1075*��238+1��
feature_size = size(X,2);%x����

Predict_label = [];
Scores =[];
tt=[];
s=[];
Acc=[];

indices=crossvalind('Kfold',1075,10);  %��������ְ�
 
for k=1:10  %������֤k=10��10����������Ϊ���Լ�
    test = (indices == k);
    train = ~test;
    trainData = X(train, :);
    trainy=combin(train,1);
    testData = X(test, :);
    testy=combin(test,1);
    model1=svmtrain(trainy,trainData,cg_str);
    [Predict_label_f1,accuracy1,Scores_f1]=svmpredict(testy,testData,model1,'-b 1');
    Predict_label = [Predict_label;Predict_label_f1];
    Acc=[Acc,accuracy1];
   
end
end