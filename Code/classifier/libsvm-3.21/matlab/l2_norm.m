function A = l2_norm( trnX )

ntrn = size( trnX , 2 ) ;
% normalize 
for i = 1 : ntrn
    trnX(:,i) = trnX(:,i) / norm( trnX(:,i) ) ;
end

A = trnX;