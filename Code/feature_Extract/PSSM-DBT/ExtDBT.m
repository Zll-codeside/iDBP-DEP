


n_protein = 525;


%PSSM_file_name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileFolder=fullfile('F:\Data\PDB1075\PDB1075_seqs_PSSM\P_PSSM');
dirOutput=dir(fullfile(fileFolder,'*.pssm'));
PSSM_XXXX={dirOutput.name}';
fileNames_PSSM = [];
for i=1:525
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end



feature_PSSM_DBT_P=[];

for i=1:n_protein
	
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);
	P = PSSM_Matrix;
	
	FF = getDBT(P);
    feature_PSSM_DBT_P(i,:)=FF(:);
	

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n_protein = 550;


%PSSM_file_name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileFolder=fullfile('F:\Data\PDB1075\PDB1075_seqs_PSSM\N_PSSM');
dirOutput=dir(fullfile(fileFolder,'*.pssm'));
PSSM_XXXX={dirOutput.name}';
fileNames_PSSM = [];
for i=1:550
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end



feature_PSSM_DBT_N=[];

for i=1:n_protein
	
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);

	P = PSSM_Matrix;
	
	FF = getDBT(P);
    feature_PSSM_DBT_N(i,:)=FF(:);
	

end

DBT5=[feature_PSSM_DBT_P;feature_PSSM_DBT_N];