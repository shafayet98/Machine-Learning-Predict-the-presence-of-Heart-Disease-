A machine learning application, prototyped in Octave that predicts the presence of heart diseases. This program use “Multivariate Logistic Regression Model” to analyse and train data. By evaluating the features the model creates a decision boundary to distinguish the presence or absence of heart disease.

- Dataset:
  
    This database contains 76 attributes, but all published experiments refer to using a subset of 14 of them. It was loaded       from Kaggle. 

     Link of dataset: https://www.kaggle.com/ronitf/heart-disease-uci

     Creators of dataset:
 
       1. Hungarian Institute of Cardiology. Budapest: Andras Janosi, M.D.
       2. University Hospital, Zurich, Switzerland: William Steinbrunn, M.D.
       3. University Hospital, Basel, Switzerland: Matthias Pfisterer, M.D.
       4. V.A. Medical Center, Long Beach and Cleveland Clinic Foundation: Robert Detrano, M.D., Ph.D.

	  Donor: David W. Aha (aha '@' ics.uci.edu) (714) 856-8779
    
    
    
- Description of How the program works:
		
    * dataset.csv: is the dataset in CSV format.

    * “model_represent.m”: is the main function which creates the model, train data and predicts the presence of heart disease       on new features. 

    * “computeCost.m”: computes the Error(Cost) and the partial derivative term known as gradient.

    * predict.m and sigmoid. : functions are helper function to predict the presence and to keep value between 0 and 1                   respectively.
    
- Minimiser: 

    “fminunc()” is a octave function which was used to minimise the cost function. ( fminunc attempts to determine a vector x     such that fcn ( x ) is a local minimum. )
  
- Iteration and Train Accuracy: 
    
    Data was trained by 400 iteration with maxIter = 400 in fminunc() and Train Accuracy was: 85.148515
  
  
  
