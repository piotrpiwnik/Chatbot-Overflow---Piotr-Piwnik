# Chatbot Overflow - Assessing the Impact of Chat GPT Introduction on Q&A Platforms

## Overview

This repository contains the files and analysis for the master thesis titled "Chatbot Overflow - Assessing the Impact of Chat GPT Introduction on Q&A Platforms." The study investigates the impact of Chat GPT-3.5 release on the activity on Stack Exchange forums, using a quasi-experimental approach with difference-in-differences estimation.

## Table of Contents

- [Introduction](#introduction)
- [Research Problem](#research-problem)
- [Data Description](#data-description)
- [Files in the Repository](#files-in-the-repository)
- [Methodology](#methodology)
- [Results and Discussion](#results-and-discussion)
- [Contact Information](#contact-information)

## Introduction

This study aims to assess the impact of the introduction of Chat GPT-3.5 on the activity of Q&A platforms, specifically focusing on Stack Exchange forums. It uses a quasi-experimental approach to determine the causal effects of this new generative AI tool on user engagement, content quality, and knowledge-sharing processes.

## Research Problem

The research focuses on four key hypothetical mechanisms:
1. Reduction in the number of posts and engagement due to users substituting Q&A forums with Chat GPT.
2. Changes in the number and quality of answers provided on the forums.
3. Impact on the novelty of the content posted.
4. Changes in the readability and complexity of the content.

## Data Description

The data set consists of more than 3 million crime records from Stack Exchange forums, covering various metrics such as the number of posts, answers, post scores, and view counts. Data are aggregated based on tag combinations and weekly observations.

## Files in the Repository

- **Control Group 2018-2019**: Data from the control period before the introduction of Chat GPT.
- **Heterogeneity Analysis**: Analysis of the variation in effects across different subgroups.
- **Linear Trend**: Linear trend analysis of the data.
- **Notebooks**: Jupyter notebooks containing the analysis scripts.
- **Poisson Regression (R)**: Poisson regression models in R for count data analysis.
- **.gitignore**: Git ignore file to exclude unnecessary files.
- **README.md**: This file, describing the project.
- **Thesis.pdf**: Full thesis document with detailed description, analysis, and results.

## Methodology

1. **Difference-in-Differences Estimation**:
   - Used to assess the causal impact of Chat GPT-3.5 introduction.
   - Comparison between pre-intervention and post-intervention periods for treatment and control groups.

2. **Natural Language Processing (NLP) Methods**:
   - Calculated content novelty and readability measures.
   - Pre-processing steps included removing HTML tags, code snippets, and non-English posts.

3. **Feature Engineering and Data Aggregation**:
   - Aggregated data based on tag combinations and weekly observations.
   - Created new variables for analysis, including readability scores and content novelty metrics.

## Results and Discussion

- The introduction of Chat GPT-3.5 had a highly negative but not significant impact on the number of posts and answers, post scores, and post view counts.
- Content posted after Chat GPT introduction was significantly more novel but less readable on average.
- The study indicates potential long-term risks for knowledge quality on Q&A platforms due to widespread use of generative AI tools.

Feel free to explore the repository and reach out if you have any questions or suggestions!
