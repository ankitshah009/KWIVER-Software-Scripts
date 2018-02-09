#import os
#import sys
#f = open('video_experiment.yml', 'r')    # pass an appropriate path of the required file
#lines = f.readlines()
#lines[36-1] = sys.argv[1]    # n is the line number you want to edit; subtract 1 as indexing of list starts from 0
#f.close()   # close the file and reopen in write mode to enable writing to file; you can also open in append mode and use "seek", but you will have some unwanted old data if the new data is shorter in length.
#
#f = open('video_experiment.yml', 'w')
#f.writelines(lines)
## do the remaining operations on the file
#f.close()

import os
import sys

def create_video_experiment(input_list,template,output_dir):
	f = open(template,'r')
	lines = f.readlines()
	f.close()
	f1 = open(input_list,'r')
	line_list = f1.readlines()
	f1.close()
	if not os.path.exists(output_dir):
		os.mkdir(output_dir)
	for line in line_list:
		line_new = []
		line_split = line.rsplit('/',2)
		root_path = line_split[0] + '/' +  line_split[1]
		dataset_id = line_split[1] + '_' + line_split[2].strip()
		source = line_split[2].strip()
		output_file = output_dir + '/' + source + '_video_experiment.yml'
		for line in lines:
			if 'root_dir' in line:
				line_split = line.split('/')
				if 'video' in line_split:
					line = '   root_path = ' + root_path + '\n'
					line_new.append(line)
				else:	
					line_new.append(line)
			elif 'dataset_id' in line:
				line_split = line.split('=')
				if len(line_split)>1:
					line = '   dataset_id = ' + dataset_id + '\n'
					line_new.append(line)
				else:	
					line_new.append(line)
			elif 'source' in line:
				line_split = line.split('=')
				if len(line_split)>1:
					line = '   source = ' + source + '\n'
					line_new.append(line)
				else:	
					line_new.append(line)
			else:
				line_new.append(line)	
		with open(output_file,'wb') as f1:
			for item in line_new:	
				f1.write(item)
		f1.close()	
		

if __name__=="__main__":
	list_name = sys.argv[1]
	template = sys.argv[2]
	output_path = sys.argv[3]
	create_video_experiment(list_name,template,output_path)	 


