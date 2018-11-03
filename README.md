# food
Food Dataset


## Food-101 Dataset
- https://www.vision.ee.ethz.ch/datasets_extra/food-101/
- We introduce a challenging data set of 101 food categories, with 101'000 images. For each class, 250 manually reviewed test images are provided as well as 750 training images. On purpose, the training images were not cleaned, and thus still contain some amount of noise. This comes mostly in the form of intense colors and sometimes wrong labels. All images were rescaled to have a maximum side length of 512 pixels.


## Get Data
`wget http://data.vision.ee.ethz.ch/cvl/food-101.tar.gz`

#### open `tar.gz` file

```bash
tar xvzf file.tar.gz
```

## References
- Naming Conventions:  https://github.com/drivendata/cookiecutter-data-science

## Creating Subset of Data
```bash
mkdir -p subset
ls food-101/images | head | xargs -I {}  cp -r food-101/images/{} subset
```

/home/jupyter/projects/food/data
xr-xr-x 2 jupyter jupyter 36K Sep 21  2013 mussels/
drwxr-xr-x 2 jupyter jupyter 36K Sep 21  2013 nachos/
drwxr-xr-x 2 jupyter jupyter 36K Sep 21  2013 omelette/
drwxr-xr-x 2 jupyter jupyter 36K Sep 21  2013 onion_rings/
drwxr-xr-x 2 jupyter jupyter 36K Sep 21  2013 oysters/
drwxr-xr-x 2 jupyter jupyter 36K Sep 21  2013 pad_thai/

jupyter@my-fastai-instance:~/projects/food/data$ mkdir subset
jupyter@my-fastai-instance:~/projects/food/data$ ls
total 4.7G
drwxr-xr-x 4 jupyter jupyter 4.0K Jul  9  2014 food-101/
-rw-r--r-- 1 jupyter jupyter 4.7G Jul  9  2014 food-101.tar.gz
drwxr-xr-x 2 jupyter jupyter 4.0K Nov  3 23:13 subset/
jupyter@my-fastai-instance:~/projects/food/data$ 
