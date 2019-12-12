


n_protein = 93;


%PSSM_file_name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileFolder=fullfile('F:\Data\PDB186\PDB186_seqs_PSSM\P_PSSM');
dirOutput=dir(fullfile(fileFolder,'*.pssm'));
PSSM_XXXX={dirOutput.name}';
fileNames_PSSM = [];
for i=1:93
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end



feature_PSSM_DBT_P186=[];

for i=1:n_protein
	
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);
	P = PSSM_Matrix;
	
	FF = getDBT(P);
    feature_PSSM_DBT_P186(i,:)=FF(:);
	

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n_protein = 93;


%PSSM_file_name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileFolder=fullfile('F:\Data\PDB186\PDB186_seqs_PSSM\N_PSSM');
dirOutput=dir(fullfile(fileFolder,'*.pssm'));
PSSM_XXXX={dirOutput.name}';
fileNames_PSSM = [];
for i=1:93
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end



feature_PSSM_DBT_N186=[];

for i=1:n_protein
	
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);

	P = PSSM_Matrix;
	
	FF = getDBT(P);
    feature_PSSM_DBT_N186(i,:)=FF(:);
	

end

PSSM_DBTP186=[feature_PSSM_DBT_P186;feature_PSSM_DBT_N186];