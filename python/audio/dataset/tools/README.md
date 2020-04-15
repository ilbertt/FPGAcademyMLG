# Usage instructions

In this folder you can find the python scripts that you can use to **test** and **verify** keywords on your needs.

### Tools

#### Tester

**`tester.py`** reproduces every step of the [algorithm](https://github.com/Luca8991/FPGAcademyMLG/tree/master/python/audio/dataset#algorithm) on the keyword you selected. For each step:
- plays the sound
- plots samples (*time* on the x axis, *threshold line* in black)
- plots FFT

It asks you for the wav **filename** contained in `dataset/true_recs` folder:
```
.wav name with extension (leave blank if you don't know):
```
you can leave blank if you don't know it, so that it asks you for the **index** of the wav:
```
number of the keyword:
```
As wavs are ordered using ASC alphabetic ordering when loaded from `dataset/true_recs` folder, the **index** of the wav is simply the number of the wav in that folder.

#### Verify random keywords
**`verify_random_keywords.py`** loads `dataset/arrays/true_set.npy` array and extracts `num_random` (default: **20**) keywords. For each keyword:
- plays the sound
- plots samples (*time* on the x axis, *threshold line* in black)
- plots FFT

###### Log Output

```
[ <random indexes array> ]

(for each random keyword) 
    #: < random index of the keyword >, len: < # of samples of the keyword (should be: 5500)  >
```

#### Verify random wavs
**`verify_random_web.py`** extracts `num_random` (default: **20**) wavs from `dataset/true_recs`. For each wav:
- plays the sound
- plots samples (*time* on the x axis, *threshold line* in black)
- plots FFT

###### Log Output

```
[ <random indexes array> ]

(for each random keyword) 
    #: < random index of the wav >, wav: < filename of the wav >, len: < # of samples of the wav  >
```

#### Remove wav from Firebase bucket

You can easily remove a wav file from Firebase bucket by typing this on your terminal:
```
$ gsutil rm gs://fpgacademy-mlg.appspot.com/true_recs/< name of wav >
```
