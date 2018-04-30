GitHub Repository for STAA 577
-----------
Slides, code, cheat sheets, and RStudio lab notebooks for 
"Applied Machine Learning" course Spring 2018


### Datasets for STAA 577

* **nyflights13**
  + new york city airport flight data from 2013 (**must install**)
  + install with `install.packages("nyflights13", repos="http://cran.rstudio.com")`
* **iris**
  + classic iris flower data set from Fisher (**comes with R installed**)
* **mtcars & mtcars2**
  + mtcars: USA motor trend cannonical data set (**comes with R installed**)
  + mtcars2: An extension of mtcars by Max Kuhn with updated data and more features (**see Labs/data/mtcars2.rda**)
* **Ames Data**
  + An extension of Ames, Iowa housing data set by Max Kuhn (**must install**)
  + install with `install.packages("AmesHousing", repos="http://cran.rstudio.com")`
* **OkC**
  + predicting STEM and other for various predictors (**see Labs/data/okc.rda**)
  + Contains several types of fields:
    - a number of open text essays related to interests and personal descriptions
    - single choice type fields, such as profession, diet, gender, body type, etc.
    - multiple choice data, including languages spoken, etc.
    - We will try to predict whether someone has a profession in the 
    STEM fields (science, technology, engineering, and math) using a 
    random sample of the overall dataset.

### Cheatsheets:
RStudio [cheatsheets](https://www.rstudio.com/resources/cheatsheets/)


### GitHub HTML Preview
* Fairly useful tool to preview HTML docs *without* having to clone the repository
* Right-click the \*.html file, copy the link, then go [here](https://htmlpreview.github.io/), paste the GitHub specific HTML link


### Sad But True
![every-time-you-write-a-loop-in-r-god-kills-a-kitten](https://user-images.githubusercontent.com/25203086/39396951-8a8d2052-4ab4-11e8-8fe9-38aa67591ef1.jpg)

#### Stu's Looping Rules for R
1. Always use a vectorized solution over iteration when possible, otherwise ... go to #2.
2. Use a functional. Since R is a functional language and for readability, usually of the `apply()` family, or a loop-wrapper function, unless ...
    1. **modifying in place:** if you are modifying or transforming certain subsets (columns) of a data frame.
    2. **recursive problems:** whenever an iteration depends on the previous iteration, a loop is better suited because a     functional does not have access to variables outside the present lexical scope.
    3. **while loops:** in problems where it is unknown how many iterations will be performed, while-loops are well suited and preferred over a functional.
3. If you must use a loop, ensure the following:
    1. **Initialize new objects:** prior to the loop, allocate the necessary space ahead of time. Do NOT "grow" a vector on-the-fly within a loop (this is terribly slow).
    2. **Optimize operations:** do NOT perform operations inside the loop that could be done either up front of applied in a vectorized fashion following the loop. Enter the loop, do the bare minimum, then get out.


### Hadley Wickham Links
* [Advanced R](http://adv-r.had.co.nz)
* [R Packages](r-pkgs.had.co.nz/)
* [R for Data Science Book](http://r4ds.had.co.nz/)
* Twitter: @hadleywickham
* GitHub: https://github.com/hadley


### Max Kuhn's Links
* [Applied Predictive Modeling Book](http://appliedpredictivemodeling.com)
* Twitter: @topepo
* GitHub: https://github.com/topepo


### Modeling Framework (thx Max Kuhn)
![review-resamp-cache](https://user-images.githubusercontent.com/25203086/38456246-cbb2f6f4-3a3f-11e8-8b2e-135b62a07cc0.png)


### Memory Usage and `rsample`:
The [rsample](https://topepo.github.io/rsample/) package is smarter than you might think.


### Vignettes:
  * [dplyr](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html)
  * [tidyr](http://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)


### What is the Tidyverse?
Information about the
  * The [tidyverse](https://www.tidyverse.org/)
  * The tidyverse [packages](https://www.tidyverse.org/packages/)
  * Converting to the [Tidyverse](http://www.significantdigits.org/2017/10/switching-from-base-r-to-tidyverse/)

