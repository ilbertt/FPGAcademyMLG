### Sync local keywords folder with Firebase bucket
import os

### check if local true_recs folder exists, otherwise create it
path="true_recs"
if not os.path.exists(path):
	print("creating directory 'true_recs'...")
	os.makedirs(path)

### download all .wav files from firebase bucket into true_recs local folder if not already in true_recs directory
current_files=os.listdir(path) #list of keywords currently in local true_recs folder

# list files from Firebase bucket
fb_files=os.popen("gsutil ls gs://fpgacademy-mlg.appspot.com/true_recs/").read()
fb_files=fb_files.replace("gs://fpgacademy-mlg.appspot.com/true_recs/","")
fb_files=fb_files.split('\n')
fb_files.remove('')
fb_files.remove('')

print('\n')
print('Firebase keywords:', len(fb_files))
print('Local keywords (before sync):', len(current_files))
print('\n')

#check if there are new keywords to be downloaded from Firebase
i=0
for file in fb_files:
	if(not(file in current_files)):
		os.popen("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/"+file+" "+path).read()
		i=i+1

#check if there are keywords to be deleted in local true_recs folder
j=0
for file in current_files:
	if(not (file in fb_files)):
		os.remove(path+"/"+file)
		j=j+1

current_files=os.listdir(path) #rescan for check

print('FINISHED!\n')
print('New keywords downloaded:', i)
print('Keywords deleted:', j)
print('Local keywords (after sync):', len(current_files))
print('\n')