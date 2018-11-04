# Food Dataset Classifer


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
- Yelp food dataset:  https://www.yelp.com/dataset

## Creating Subset of Data
```bash
jupyter@my-fastai-instance:~/projects/food/data$ pwd
/home/jupyter/projects/food/data
```
```bash
mkdir -p subset/train
ls food-101/images | head | xargs -I {}  cp -r food-101/images/{} subset/train
```

## Wish List (to do later)
- create a class called "OTHER" which has miscellaneous images, so the algorithm returns "other" when it's a food that is not in one of the 101 categories.
- to connect to an API, and return, for one serving, the nutritional information


## Heroku Info
- NP repo:  https://github.com/npatta01/bear-classifier/blob/master/readme.md

