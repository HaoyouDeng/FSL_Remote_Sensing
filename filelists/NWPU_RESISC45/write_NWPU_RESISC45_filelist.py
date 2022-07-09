import numpy as np
from os import listdir
from os.path import isfile, isdir, join
import os
import random

cwd = os.getcwd()
data_path = join(cwd,'source')
savedir = './'
dataset_list = ['base','val','novel']
val_dataset_label_list = ['baseball_diamond',
                        'basketball_court', 
                        'chaparral',
                        'church', 
                        'circular_farmlan',
                        'overpass']
novel_dataset_label_list = ['airplane',
                        'bridge',
                        'island',
                        'intersection',
                        'ship',
                        'storage_tank']

if not os.path.exists(savedir):
   os.makedirs(savedir)

folder_list = [f for f in listdir(data_path) if isdir(join(data_path, f))]
folder_list.sort()
label_dict = dict(zip(range(0,len(folder_list)), folder_list))

classfile_list_all = []

for i, folder in enumerate(folder_list):
    folder_path = join(data_path, folder)
    classfile_list_all.append( [ join(folder_path, cf) for cf in listdir(folder_path) if (isfile(join(folder_path,cf)) and cf[0] != '.')])
    random.shuffle(classfile_list_all[i])

for dataset in dataset_list:
    file_list = []
    label_list = []
    class_list = []
    for i, classfile_list in enumerate(classfile_list_all):
        if 'base' in dataset:
            if (label_dict[i] not in val_dataset_label_list) and (label_dict[i] not in novel_dataset_label_list):
                file_list = file_list + classfile_list
                label_list = label_list + np.repeat(i, len(classfile_list)).tolist()
                class_list.append(label_dict[i])
        if 'val' in dataset:
            if label_dict[i] in val_dataset_label_list:
                file_list = file_list + classfile_list
                label_list = label_list + np.repeat(i, len(classfile_list)).tolist()
                class_list.append(label_dict[i])
        if 'novel' in dataset:
            if label_dict[i] in novel_dataset_label_list:
                file_list = file_list + classfile_list
                label_list = label_list + np.repeat(i, len(classfile_list)).tolist()
                class_list.append(label_dict[i])

    fo = open(savedir + dataset + ".json", "w")
    fo.write('{"label_names": [')
    fo.writelines(['"%s",' % item  for item in class_list])
    fo.seek(0, os.SEEK_END)
    fo.seek(fo.tell()-1, os.SEEK_SET)
    fo.write('],')

    fo.write('"image_names": [')
    fo.writelines(['"%s",' % item  for item in file_list])
    fo.seek(0, os.SEEK_END)
    fo.seek(fo.tell()-1, os.SEEK_SET)
    fo.write('],')

    fo.write('"image_labels": [')
    fo.writelines(['%d,' % item  for item in label_list])
    fo.seek(0, os.SEEK_END)
    fo.seek(fo.tell()-1, os.SEEK_SET)
    fo.write(']}')

    fo.close()
    print("%s -OK" %dataset)
