---
title: "CASE STUDY 3"
author: "Ted Smith"
date: "January 21, 2021"
output:
  html_document:  
    keep_md: true
    toc: true
    toc_float: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---






```r
# Use this R-Chunk to import all your datasets!
data <- gapminder
```

## Background

_Place Task Background Here_

## Data Wrangling


```r
# Use this R-Chunk to clean & wrangle your data!
NoKU <- gapminder %>% 
  filter(country != 'Kuwait')

NoKU
```

```
## # A tibble: 1,692 x 6
##    country     continent  year lifeExp      pop gdpPercap
##    <fct>       <fct>     <int>   <dbl>    <int>     <dbl>
##  1 Afghanistan Asia       1952    28.8  8425333      779.
##  2 Afghanistan Asia       1957    30.3  9240934      821.
##  3 Afghanistan Asia       1962    32.0 10267083      853.
##  4 Afghanistan Asia       1967    34.0 11537966      836.
##  5 Afghanistan Asia       1972    36.1 13079460      740.
##  6 Afghanistan Asia       1977    38.4 14880372      786.
##  7 Afghanistan Asia       1982    39.9 12881816      978.
##  8 Afghanistan Asia       1987    40.8 13867957      852.
##  9 Afghanistan Asia       1992    41.7 16317921      649.
## 10 Afghanistan Asia       1997    41.8 22227415      635.
## # ... with 1,682 more rows
```

## Data Visualization


```r
# Use this R-Chunk to plot & visualize your data!

#Base Graph
G3 <- ggplot(data = NoKU,
       mapping = aes(x = lifeExp,
                     y = gdpPercap,
                     color = continent,
                     size = pop)) +
  scale_y_continuous(trans = "sqrt") +
  theme_bw() +
  geom_point() +
  facet_wrap(~year, nrow = 1) +
  #Labels
  labs(x = "Life Expectancy",
                y = "GDP Per Capita",
                title = "Case Study 3",
                subtitle = "A Look at Life Expectancy and GDP Per Capita*",
                caption = "*Sans Kuwait",
                color = "Continent",
                size = "Population (100k)") 

G3
```

![](CaseStudy3_files/figure-html/plot_data-1.png)<!-- -->

## Conclusions
