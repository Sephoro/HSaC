import pickle
import numpy as np
import pandas as pd

def ANN():

    # Load and return ANN model

    ann = open('../Models/ANN_B.pkl', 'rb')
    ann = pickle.load(ann)

    return ann


def SVM():

    # Load and return ANN model

    svm = open('../Models/SVM_B.pkl', 'rb')
    svm = pickle.load(svm)

    return svm

def XGB():

    # Load and return XGB model

    xgb = open('../Models/XGB_B.pkl', 'rb')
    xgb = pickle.load(xgb)

    return xgb




p = np.array([[0.60558722, 0.44040524, 0.59096055 ,0.49732805 ,0.59163445 ,0.37739791,
      0.20702681, 0.20030233, 0.44683784 ,0.33698762, 0.03386885 ,0.50877092,
      0.21170595, 0.09090909, 0.0793897,  0.00555473 ,0.08695652, 0.26287541,
      0.22966247, 0.23532853, 0.17232591, 0.0        , 0.13817362 ,0.2771009 ],
     [0.66796536, 0.33382338, 0.61107336, 0.26396155, 0.28369001, 0.33409127,
      0.19383278, 0.12179569, 0.45869651, 0.29309481, 0.03459072, 0.29485867,
      0.16566645, 0.04545455, 0.09939987, 0.00434008, 0.47826087, 0.39013405,
      0.33619338, 0.39608419, 0.26595155, 0.03267973, 0.10891509, 0.27958992]])

c = np.array([[0.64204744, 0.36595563, 0.53638035, 0.44564641, 0.55043321, 0.36501298,
               0.10729773, 0.11067317 ,0.16428943, 0.11301252, 0.08768154, 0.65292324,
               0.24843421 ,0.10606061, 0.08281142 ,0.00530542 ,0.39130435, 0.18007511,
               0.07722921 ,0.03161438 ,0.05817925, 0.68783067, 0.17235677 ,0.23543144],
              [0.36104251, 0.64313895, 0.74314586, 0.50611286, 0.42351504 ,0.65360472,
               0.19629566, 0.12413136, 0.35104354 ,0.2325801 , 0.09813565, 0.64117894,
               0.15793424, 0.15151515, 0.03948359 ,0.01165305, 0.34782609, 0.31875375,
               0.24327501, 0.31568188, 0.19103469, 0.85953878, 0.23719107, 0.31241966]])

df = pd.DataFrame.from_records(p)
df.columns =  ['stdPCA1', 'stdPCA2', 'stdPCA3', 'meanPCA1', 'meanPCA2', 
               'meanPCA3', 'meanS1', 'meanS2', 'stdS1', 'stdS2',
               'rebuilError', 'ratios', 'stdFFTSHA', 'lenFFTSHA', 
               'stdlenFFTSHA', 'lenstdFFTSHA', 'posFFT', 'maxstdS1',
               'maxstdS2', 'mmstdS1', 'mmstdS2', 'posRatio', 
               'stdWavelet', 'meanWavelet']
b = SVM()
#print(df)
print(b.predict(df))


