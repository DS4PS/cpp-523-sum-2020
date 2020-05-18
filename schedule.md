---
layout: default
title: Schedule

canvas: 
  assignment_url: 'https://canvas.asu.edu/courses/54984/assignments'
  
---

<!--- 
Submit Button - <a class="uk-button uk-button-primary" href="{{page.canvas.assignment_url}}">SUBMIT LAB</a>
-->






<div class = "uk-container uk-container-small">
  
<br><br>
<br><br>

**CONTENTS:**

-----------------------

* TOC
{:toc}

-----------------------

<br>



# Semester Overview 


These courses are designed to be interactive, and a lot of learning occurs by practicing the technical jargon from the field and learning how to talk about data and models. 


<br>

## Course Cadence 

Please note the organizatin of assignments for class. 

![](../assets/img/course-cadence.png)

<br>

Labs are due Friday, mini assessments covering the previous lab are on Tuesday. 

Get started early on labs so you have time to ask questions on the discussion board if you get stuck. 

Labs are graded pass-fail. The criteria is that you demonstrate an understanding of the topics covered, which is typically operationalized as getting over half of the questions on the assignment correct. 

The mini assessments typically consist of three multiple-choice or matching questions to guage your understanding of the previous week's lectures and lab. If you understood everything on the labs you should do fine on the mini assessments. 

**Mini-assessments open on Saturday and close Tuesday at 11:59pm (AZ time).** You have 30 minutes to complete an assessment once they start. You can take it at any time Sat-Tues.



<br>

## Tips for Success

**There is no way to learn and retain all of this material in one course.** 

It is completely normal for this material to not click the first time you see it. We will try to repeat concepts and build on them through the semester, and the Evaluation sequence in this program (CPP 523, 524, and 525) offer reinforcement. 

You are investing in a skill-set that you will build over time. You will find some material organized for quick reference on the [Resources](../resources/) page. 

You are encouraged to build your own library of sources you find useful and keep them for future reference. 



<br>

## Getting Help

Learning how to seek help and use discussion boards will accelerate learning and facilitate collaboration. Social coding tools like GitHub use these features extensively. 

We are going to throw a lot at you, but also provide a lot of support. Over these first couple of weeks feel free to reach out for anything you might need. 

If you find something confusing let us know (likely others will find it confusing as well). 

* You can post a question to the homework [discussion board](../help/).  
* You can schedule a Zoom call to do a screen share if you want to walk through anything. 
* Or you can request a walk-through of a problem. The instructor will provide an example with the solution. 

As a general rule of thumb, if you are stuck on the math or code for a problem, need clarification about what the question is asking, want to make sure you understand a formula, or are having similar issues then the help discussion page is the easiest and quickest way to get help. 

If you are confused about concepts or having a hard time even formulating your question then virtual office hours are your best option.

Note that the discussion board is hosted by the GitHub issues feature. It is a great forum because:

* You can format code and math using standard markdown syntax. 
* You can cut and paste images directly into the message. 
* You can direction responses using @username mentions. 

Please preview your responses before posting to ensure proper formatting. Note that you format code by placing fences around the code:

````
```
# your code here
lm( y ~ x1 + x2 )

# formulas
y = b0 + b1•X1 + b2•X2 + e
b1 = cov(x,y) / var(x)
```
````

The fences are three back-ticks. These look like quotation marks, but are actually the character at the top left of your keyboard. 



<br>
<hr>
<br>













# Week 1 - Nuts and Bolts of Regression Models

## Overview 

This section provides a review of the basic building blocks of a bivariate regression model:

* sample variance and standard deviation 
* slope 
* intercept 
* regression line 
* the "error term" or "residual"
* standard errors 

**Learning Objectives:**

Once you have completed this section you will be able to conceptually understand what a regression slope represents (the conditional mean), the formulas for regression coefficients, and the tabulation of residuals. 

**Review:**

Test your baseline knowledge of regression models model with the [regression review handout](../handouts/Regression-Review-Self-Test.pdf). 

This review will be useful to benchmark your knowledge about regression models, and offers a good reference for the concepts that you should focus on over the first three weeks of class. On the final exam you will be expected to demonstrate an understanding of:

* Variance and covariance 
* The sampling distribution 
* Standard deviation 
* Standard error 
* Confidence intervals 
* Slope 
* "Explained" variance 

<br>

**Readings:**

Reichardt, C. S., & Bormann, C. A. (1994). Using regression models to estimate program effects. Handbook of practical program evaluation, 417-455. [ [pdf](../pubs/Estimating%20Program%20Effects%20Using%20Regression%20Models.pdf) ]

**For reference:**

Diez, D. M., Barr, C. D., & Cetinkaya-Rundel, M. (2012). OpenIntro statistics (pp. 174-175). OpenIntro. [CH-08 Introduction to Linear Regression](/pubs/openintro-statistics-sample.pdf)

Multiple Regression overview chapter [[pdf](../pubs/Multiple%20Regression.pdf)]


## Lecture 

Is caffeine good for you? [ [link](https://www.hsph.harvard.edu/news/hsph-in-the-news/coffee-depression-women-ascherio-lucas/) ]

*Is caffeine a treatment in this study? How do we know caffeine is the cause of the outcomes we see in this study?*

*Before we can understand causal impact we must first create a regression model that tells us about the RELATIONSHIP between caffeine intake and heart rate. We will then add nuance to our understanding of when the relationship can be interpretted as casual, and when it is simply correlational.*

LECTURE: [ [Building a regression model](../lectures/caffeine.html) ]

**Data Used in this Section**

Caffeine and Heart Rates based off of this [caffeine study](https://www.theodysseyonline.com/caffeine-affect-heart-rate):

```r
# paste this code into R
url <- "https://raw.githubusercontent.com/DS4PS/cpp-523-sum-2020/master/lectures/data/caffeine.csv"
dat <- read.csv( url, stringsAsFactors=F ) 
summary( dat )
plot( dat$caffeine, dat$heart.rate )
model.01 <- lm( heart.rate ~ caffeine, data=dat )
summary( model.01 )
```

<br>






## Lab 01

-----

<a class="uk-button uk-button-default" href="https://github.com/DS4PS/cpp-523-sum-2020/raw/master/labs/Lab-01-Regression-Review.docx">Lab-01 Instructions</a>

-----


The first lab is meant as a review of some important regression formulas to either shake out the cobwebs if you have covered this material before, or get everyone on the same page if it is new. It will review the following topics:

* Calculating a bivariate regression slope (**`b1`**)
* Basic interpretation of the slope
* Intercept (**`b0`**)
* What is a residual?
  - residual (or error) sum of squares
  - regression (or explained) sum of squares 
* R-squared: the measure of variance explained 


The lecture notes needed for the lab are available on the course shell:

[ [Building a regression model](../lectures/caffeine.html) ]

And the first chapter from Lewis-Beck serves as a reference for specific formulas if needed:

Lewis-Beck, C., & Lewis-Beck, M. (2015). Applied regression: An introduction (Vol. 22). Sage publications. [ [pdf](/pubs/Applied%20Regression%20Lewis-Beck.pdf) ]


<hr>

This first lab is designed as a review (or getting up to speed) assignment to direct your attention on a handful of important regression formulas we will use this semester. For the most part we will rely on the computer the do the math for us, but these formulas are important for our conceptual understanding of the regressions, so there is value in working through a simple example (five data points) by hand. 

For THIS ASSIGNMENT ONLY all of the work is **done by hand** so you can type your answers right into the Lab 01 word document. For future assignments we will be using R Markdown documents so that you can run models and submit the results directly. 


Please show the steps for each calculation. You can check your results in R or on a calculator when you are done.

Save it using the naming convention:

Lab-##-LastName.doc

And submit via Canvas. 

Lab 01 is due Friday. You will, however, have a full week for subsequent labs. 

If you have questions, please post them to the [Assignment Discussion Board](../help/).


-----

<a class="uk-button uk-button-primary" href="https://canvas.asu.edu/courses/54984/assignments">Submit Lab-01</a> 

-----

<br>
<br>
<br>


</div>


<br>
<br>

<style>
em {
    color: black;
} 
h2{
  font-size:calc(2em + 0.25vw) !important;
  color: #995c00;
  font-weight:300;
  margin-top:40px !important;
  margin-bottom:20px;
  } 

h3{
  font-size:calc(1.4em + 0.25vw);
  font-weight:300;
  margin-top:20px !important;
  margin-bottom:10px;} 
   

ul a:hover {
  color: #337ab7;
  text-decoration: none;
  font-weight: normal;
} 

#markdown-toc ul {
  font-size:calc(0.85em + 0.25vw);
  line-height:1.2;
  font-weight: bold;
} 
#markdown-toc ul li {
  list-style-type: disc !important;
  font-size:calc(0.65em + 0.25vw);
  line-height:1.2;
  margin-left: 20px;
}  
#markdown-toc a {
  color: black;
  font-size:calc(0.65em + 0.25vw);
  line-height:1.2;
  font-weight: normal;
}  
#markdown-toc a:hover {
    color: black;
    text-decoration: none;
    font-weight: bold;
}

</style>
