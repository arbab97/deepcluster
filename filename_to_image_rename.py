

import pandas as pd
import os
import shutil
input_data_directory="/media/rabi/Data/ThesisData/audio data analysis/audio-clustering/plots/spectrograms/batsnet_train/1"
input_file="/home/rabi/Documents/Thesis/deepcluster_misc_data/results_deepcluster.csv"
output_data_directory="/media/rabi/Data/ThesisData/deepcluster_results"


input_data=pd.read_csv(input_file)

for index, (_, file_path, cluster_assigned) in input_data.iterrows():
    file_name=file_path.split('/')[-1]
    copy_this_file=os.path.join(input_data_directory, file_name)
    to_this_path=os.path.join(output_data_directory, (str(cluster_assigned)+ " Cluster:"+file_name)) 
    shutil.copy2(copy_this_file,to_this_path )