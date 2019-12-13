<<<<<<< HEAD
# iDBP-DEP
Detection DNA-binding proteins
=======
# Bioinformatics
DNA-binding proteins

This repo contains all core code in our paper [Sequence-based Detection of DNA-binding Proteins by Encoding Multiple-View features with Feature Selection]

### File Structure
```
iDBP-DEP
│   README.md    
│
└───Data
│   │
│   └───PDB186
│   │   │   Feature Data
│   │   │   |   DDE186.mat
|   |   |   |   feature_NMBAC_186.mat
|   |   |   |   PSSM_DBT_186.mat
|   |   |   |   PSSM_DWT_186.mat
│   │   │   PDB186_seqs_PSSM
│   │
│   └───PDB594
│   │   │   
|   |   └───Feature Data
│   │   │   |   DDE594.mat
|   |   |   |   feature_NMBAC_594.mat
|   |   |   |   PSSM_DBT_594.mat
|   |   |   |   PSSM_DWT_594.mat  
│   │   │   PDB594_seqs_PSSM
│   └───PDB1075
│   │   │   
|   |   └───Feature Data
│   │   │   |   DDE.mat
|   |   |   |   feature_NMBAC.mat
|   |   |   |   PSSM_DBT.mat
|   |   |   |   PSSM_DWT.mat  
│   │   │   PDB1075_seqs_PSSM
└───Code
│   │
│   └───classifier
│   │   │   libsvm-3.21
│   │   │   SVM-RFE-CBR-v1.3
│   │
│   └───feature_Extract
│   │   │
|   |   └───DDE
|   |   |   |   DDE.py
│   │   │   
|   |   └───NMBAC
│   │   │   |   BAC.m
|   |   |   |   ExBAC_demo.txt
|   |   |   |   phy_6.mat
|   |   |   |   PYH_6.m
│   │   │  
|   |   └───PSSM-DBT
│   │   │   |   DBT186.m
|   |   |   |   ExDBT.m
|   |   |   |   getDBT.m
│   │   │  
|   |   └───PSSM-DWT
│   │   │   |   EstraggoConDWT.m
|   |   |   |   ExDWT_demo.txt
|   |   |   |   getDWT.m
│   │   
│   └───predictor
│   |   │   before_FS.m
│   |   │   Independent_test.m  
│   |   │   train_594_demo.txt  
│   |   │   train_1075.m 
|   |   |   train_1075_demo.txt
│   │   │  
│   └───Read_Text_files_PSSM.m
│   
│   
└───PDB594_workspace
|   │   DDE_DBT_DWT_NMBAC_594_workspace.mat
|   │   DDE594_workspace.mat
|   │   feature_NMBAC_594_workspace.mat
|   │   PSSM_DBT_594_workspace.mat
|   │   PSSM_DWT_594_workspace.mat
│   
└───PDB1075_workspace
    │   DDE_DBT_DWT_NMBAC_594_workspace.mat
    │   DDE_workspace.mat
    │   feature_NMBAC_workspace.mat
    │   PSSM_DBT_workspace.mat
    │   PSSM_DWT_workspace.mat
```
**Extract feature data**
All the protein data and PSSM profile in ~/Data and Extract features code in file ~/Code/feature_Extract

**Experiment feature data**
The feature Data used in our paper from ~/Data/PDB186(PDB1075/PDB594)/feature Data

**Train models with feature Data**
We provide a train_1075_demo.txt (~/Code/predictor/train_1075_demo.txt) to help you use the iDBP-DEP to detect DNA-binding proteins.
And you can also see the great performance of iDBP-DEP on the different datasets in different workspace.
>>>>>>> iDEP
