# Tiago Almeida Cruz  | Master's Degree in Biomedical Engineering 
#### If you are interested in my master thesis document, feel free to check out this link: To be made available
#### If you are interested in the research paper, feel free to check out this link: To be developed
#
## Biometric Signature of Emotion: Multivariate Statistics
#### Emotional recognition, based on physiological signals and self-assessment questionnaires of the emotional state, is important to understand how human beings react physiologically to a given emotional stimulus and how they describe what they experience. Human beings are complex systems and react in different ways to the same emotional stimulus, which may make it important to consider, a priori, groups of individuals who respond in a similar way to the stimulation generated, in order to build more efficient emotional recognition models. Therefore, this work allowed to interpret and describe an emotional profile through a priori characterization of participants. 

#### In this process some open questions were analyzed and a lot of things were made:
#### 1. Analysing questionnaires and physiological signals (ECG, EDA, EMG) and defining groups of individuals based on these. 
#### 2. Building and optimizing machine learning models for each group individually and for the global case where all participants are considered together.
#### 3. Understand if the Principal Components Analysis, by bringing changes in the dimensional space, allows obtaining better results in emotion classification.
#### 4. Understand if the analysis of the physiological signals separately gives better results in terms of performance of the models developed in comparison with the consideration of the signals together.
#### 5. Understand whether the separation into groups confers improvements in terms of the results of the emotional classification model compared to the global case (without separation by groups).

### Block diagram of the method used:
![image](https://github.com/TiagoCruzzz/Biometric-Signature-of-Emotion-Multivariate-Statistics/assets/134963522/545ed12d-7748-470c-8c0e-ebe3a51bea1a)

#
## Repository Organization: 

### Baseline Analysis: 
#### &#8594; Baseline_methodology_A: Contains the groups formed by CA on the baseline data associated with the features selected on the basis of methodology A 

#### &#8594; Baseline_methodology_B: Contains the groups formed by CA on the baseline data associated with the features selected on the basis of methodology B

### FA & CA (Factorial analysis and Cluster analysis): 
#### &#8594; STICSA - State & Trait: 
* __Factorial_analysis_session_1.ipynb:__<br>Contains the exception of the factor analysis on the data from session 1 simplified (only loadings and scores)
* __state_trait:__<br>Contains the factor analysis and cluster analysis carried out (applies to session 1 and session 2)

#### &#8594; VAS pos: 
* __Fear_Happy_Neutral:__<br>Contains the factor analysis and cluster analysis for the fear, happy and neutral states and for session 1 and 2 of each (only the file you enter varies)

#### &#8594; VAS pre: 
* __vas-pre:__<br> Contains factor analysis and cluster analysis for vas pre session 1 and session 2
* __VAS-PRE.ipynb:__<br> Contains a factor analysis with boxplots associated with groups formed from the scores generated

### Fear Analysis:
#### &#8594; Fear_features: Contains the cluster analysis carried out on the data associated with the features selected using the methodology A for each physiological signal separately. 
#### &#8594; fear_features_excerpts_s1: Contains analyses carried out for each group of participants (G1, G2 and G3) and for each combination made between these groups and the features of each physiological signal collected during fear stimulation (e.g: G1-EMG, G1-ECG, G1-EDA, G1_EMG+EDA+ECG), for each case it provides data on the loagings, scores and % of var explained and transfers this data to excel, it also provides scree plots, contribution of the variables/features to PC1, PC2 and PC3, biplot, 3D graph with the distribution associated with the first 3 PCs.
#### &#8594; fear_features_excerpts_geral_s1: Contains analyses carried out for the general case (signals collected during fear stimulation), for each case provides data on loagings, scores and % of var explained and transfers this data to excel, also provides scree plots, contribution of variables/features to PC1, PC2 and PC3, biplot, 3D graph with the distribution associated with the first 3 PCs.
#### &#8594; Fear_Analysis_A.ipynb: Contains the selected features (fear stimulation) from methodology A for session 1 and 2
#### &#8594; Fear_Analysis_C.ipynb: Contains the selected features (fear stimulation) from methodology C for session 1 and 2
#### &#8594; Fear_excerpts: Contains the division of each signal into 5 segments of 2 min each (fear stimulation), pre-processing and feature extraction on each one. 

### Happy Analysis:
#### &#8594; Happy_features: Contains the cluster analysis carried out on the data associated with the features selected using the A methodology for each physiological signal separately. 
#### &#8594; Happy_features_excerpts_s1: Contains analyses carried out for each group of participants (G1, G2 and G3) and for each combination made between these groups and the features of each physiological signal collected during happy stimulation (e.g: G1-EMG, G1-ECG, G1-EDA, G1_EMG+EDA+ECG), for each case it provides data on the loagings, scores and % of var explained and transfers this data to excel, it also provides scree plots, contribution of the variables/features to PC1, PC2 and PC3, biplot, 3D graph with the distribution associated with the first 3 PCs.
#### &#8594; Happy_features_excerpts_geral_s1: Contains analyses carried out for the general case (signals collected during happy stimulation), for each case provides data on loagings, scores and % of var explained and transfers this data to excel, also provides scree plots, contribution of variables/features to PC1, PC2 and PC3, biplot, 3D graph with the distribution associated with the first 3 PCs.
#### &#8594; Happy_Analysis.ipynb: Contains the selected features (happy stimulation) from methodology A for session 1 and 2
#### &#8594; Happy_Analysis_C.ipynb: Contains the selected features (happy stimulation) from methodology C for session 1 and 2
#### &#8594; Happy_excerpts: Contains the division of each signal into 5 segments of 2 min each (happy stimulation), pre-processing and feature extraction on each one. 

### Neutral Analysis:
#### &#8594; Neutral_features: Contains the cluster analysis carried out on the data associated with the features selected using the A methodology for each physiological signal separately. 
#### &#8594; Neutral_features_excerpts_s1: Contains analyses carried out for each group of participants (G1, G2 and G3) and for each combination made between these groups and the features of each physiological signal collected during neutral stimulation (e.g: G1-EMG, G1-ECG, G1-EDA, G1_EMG+EDA+ECG), for each case it provides data on the loagings, scores and % of var explained and transfers this data to excel, it also provides scree plots, contribution of the variables/features to PC1, PC2 and PC3, biplot, 3D graph with the distribution associated with the first 3 PCs.
#### &#8594; Neutral_features_excerpts_geral_s1: Contains analyses carried out for the general case (signals collected during neutral stimulation), for each case provides data on loagings, scores and % of var explained and transfers this data to excel, also provides scree plots, contribution of variables/features to PC1, PC2 and PC3, biplot, 3D graph with the distribution associated with the first 3 PCs.
#### &#8594; Neutral_Analysis.ipynb: Contains the selected features (neutral stimulation) from methodology A for session 1 and 2
#### &#8594; Neutral_Analysis_C.ipynb: Contains the selected features (neutral stimulation) from methodology C for session 1 and 2
#### &#8594; Neutral_excerpts: Contains the division of each signal into 5 segments of 2 min each (neutral stimulation), pre-processing and feature extraction on each one. 

### Pre_process e Feature_Extraction:
#### &#8594; Final_Results_Histograms.ipynb: Contains the histograms associated with the F1-score, recall and precision values generated from the optimised models built
#### &#8594; Neurokit Function.ipynb: Contains the pre-processing and feature extraction functions for each physiological signal
#### &#8594; Pre_proc_feat_extract.ipynb: Contains the execution of pre-processing and feature extraction (this is the pipeline for this phase)
#### &#8594; Reading.ipynb: Contains functions that are basically used in the pipeline to read the files associated with each physiological signal collected  

### Questionnaire analysis:
#### &#8594; Questionnaires.ipynb: Processing the information from the socio-demographic questionnaires.

### Emotional models (Excerpts): 
#### Feature optimization, model training and evaluation and hyperparameters optimization for dataset 4, 5 and 6 and for each combination between groups formed and set of features.  

### Emotional models (complete signals).ipynb: 
#### Feature optimization, model training and evaluation and hyperparameters optimization for dataset 1, 2 and 3 and for each combination between groups formed and set of features. 

### Optimal hyperparameters selection (dataset 6).ipynb: 
#### Obtaining for each combination the optimal features and selecting the optimal hyperparameters and saving files with the optimal hyperparameter information for each combination. 

### Optimized models (dataset 6).ipynb: 
#### Optimized models, one for each combination between groups formed and features of physiological signals, for dataset 6, and using the optimal features and optimal hyperparameters obtained previously.


## Complementary information:  
### Results and Discussion: 
#### &#8594; VAS-Pre questionnaire: 
* __Complementary Information A:__<br>Boxplots made for the cases where VAS-POS questionnaires were used, carried out after each emotional stimulation (Fear, Happy and Neutral). This information complements Section 5.1.2. 
>     A - Vas-Pos fear 
>Set of 5 figures, each one with 4 graphics. Each graph contains 3 Boxplots (1 per group of participants), that allows a comparison of the percentages (% of anxiety, happy, fear or stress) obtained in the VAS-Pos questionnaire (Session 1) made after fear stimulation, according to the groupings of participants made based on the cluster analysis on the features retained from the EMG, ECG, EDA, STICSA-State questionnaire or STICSA-Trait questionnaire (Session 1). 

>     A - Vas-Pos happy
>Set of 5 figures, each one with 4 graphics. Each graph contains 3 Boxplots (1 per group of participants), that allows a comparison of the percentages (% of anxiety, happy, fear or stress) obtained in the VAS-Pos questionnaire (Session 1) made after happy stimulation, according to the groupings of participants made based on the cluster analysis on the features retained from the EMG, ECG, EDA, STICSA-State questionnaire or STICSA-Trait questionnaire (Session 1). 

>     A - Vas-Pos neutral
>Set of 5 figures, each one with 4 graphics. Each graph contains 3 Boxplots (1 per group of participants), that allows a comparison of the percentages (% of anxiety, happy, fear or stress) obtained in the VAS-Pos questionnaire (Session 1) made after neutral stimulation, according to the groupings of participants made based on the cluster analysis on the features retained from the EMG, ECG, EDA, STICSA-State questionnaire or STICSA-Trait questionnaire (Session 1). 

* __Complementary Information B:__<br>Tables that shows the results of Kruskal-wallis test, One Way ANOVA or Welch's ANOVA, for the case in 
which the VAS-Pos questionnaires are used. This information complements Section 5.1.2. 
>     Table B.1 
>Table with the results of the statistical tests performed on the grouped values of the features anxiety, fear, 
stress and happy obtained in the VAS-Pos questionnaire made after fear stimulation, in order to verify the existence or not of significant 
differences between the groups formed based on the ECG, EDA, EMG signals (collected during fear stimulation), the state 
questionnaire, and the trait questionnaire.

>     Table B.2
>Table with the results of the statistical tests performed on the grouped values of the features anxiety, fear, 
stress and happy obtained in the VAS-Pos questionnaire made after happy stimulation, in order to verify the existence or not of significant 
differences between the groups formed based on the ECG, EDA, EMG signals (collected during happy stimulation), the state 
questionnaire, and the trait questionnaire.

>     Table B.3
>Table with the results of the statistical tests performed on the grouped values of the features anxiety, fear, 
stress and happy obtained in the VAS-Pos questionnaire made after neutral stimulation, in order to verify the existence or not of significant 
differences between the groups formed based on the ECG, EDA, EMG signals (collected during neutral stimulation), the state 
questionnaire, and the trait questionnaire.

#### &#8594;  Feature Selection Results: 
* __Complementary Information C:__<br>Tables that show the features selected after implementation of the methodology A and after the methodology C (approach C1 and approach C2). This information complements Section 5.3. 

#### &#8594;  Principal Component Analysis Results: 
* __Complementary Information D:__<br>Graphs that shows features contributions to PC1. This information complements Section 5.4. 
>     D - Contributions PC1 - Fear
>Graphs that shows features contributions to PC1, obtained from the principal component analysis on the features, of the individuals belonging to group 1, 2, 3, or global, selected from methology A on the ECG, EDA, EMG, or ECG+EDA+EMG signals associated with fear stimuli.

>     D - Contributions PC1 - Happy
>Graphs that shows features contributions to PC1, obtained from the principal component analysis on the features, of the individuals belonging to group 1, 2, 3, or global, selected from methology A on the ECG, EDA, EMG, or ECG+EDA+EMG signals associated with happy stimuli.

>     D - Contributions PC1 - Neutral
>Graphs that shows features contributions to PC1, obtained from the principal component analysis on the features, of the individuals belonging to group 1, 2, 3, or global, selected from methology A on the ECG, EDA, EMG, or ECG+EDA+EMG signals associated with neutral stimuli.

>     D - Contributions PC1 - Baseline
>Graphs that shows features contributions to PC1, obtained from the principal component analysis on the features, of the individuals belonging to group 1, 2, 3, or global, selected from methology A on the ECG, EDA, EMG, or ECG+EDA+EMG signals associated with baseline.

* __Complementary Information E:__<br>Scatterplots matrix. This information complements Section 5.4. 
>     E - scatterplot matrix - Fear
>Scatterplots matrix considering the first three principal components obtained based on the 
principal components analysis over the features selected based on methodology A and with the 
consideration of ECG, EDA, EMG, or ECG+EDA+EMG signals on the emotional state of fear.

>     E - scatterplot matrix - Happy
>Scatterplots matrix considering the first three principal components obtained based on the 
principal components analysis over the features selected based on methodology A and with the 
consideration of ECG, EDA, EMG, or ECG+EDA+EMG signals on the emotional state of happy.

>     E - scatterplot matrix - Neutral
>Scatterplots matrix considering the first three principal components obtained based on the 
principal components analysis over the features selected based on methodology A and with the 
consideration of ECG, EDA, EMG, or ECG+EDA+EMG signals on the emotional state of neutral.

>     E - scatterplot matrix - Baseline
>Scatterplots matrix considering the first three principal components obtained based on the 
principal components analysis over the features selected based on methodology A and with the 
consideration of ECG, EDA, EMG, or ECG+EDA+EMG signals on the baseline.

#### &#8594; Final optimized model: 
* __Complementary Information F:__<br>Graphs of the results obtained With the optimized constructed model in terms of Recall and Precision. This information complements Section 5.5.1.
