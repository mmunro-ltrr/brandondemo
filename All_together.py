import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_excel('Data.xlsx')
plt.plot(data.iloc[:,0], data.iloc[:,1])
plt.savefig('plotted_data.png')