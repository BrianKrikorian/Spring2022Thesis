# MINUTES

## 6/28 Minutes
* Equations as part of the sentence means that you shouldn't say "The equation for PAR is listed below". Rather, it should flow naturally as part of the sentence, i.e. "All of these statistics are combined to form PAR, (equation), which allows the prediction of player performance."
* Get some more and better references, currently at 9 (including reference material), try to double it.
	* Include in the introduction, make sure to discuss them.
	* Focus on openWAR (Greg Matthews) and how it utilizes references.
	* Similar research done in basketball or any sport.
* Be sure to use command line for git so that comments and changes aren't lost (push, commit, add, etc.).
	* Don't remove any of Professor Yan's comments until he approves of the changes you made regarding them.
* Use R code to make plots nicer (ggplot, 2 by 2 square of the plots?) Just so that they fit on the page better.
* i. Clean up style ii. Read JSA articles iii. Find more references iv. Use git command line
## 4/26 Minutes
* Send to Michael Cunningham just so he has it, but Prof. Yan will handle grading
* Change height and width of pdf's in R code so that they fit nicer on the page
* Try using "tbp" for tables and figures again, see if you can get it to fit better
* Use eqref instead of ref when referring to an equation, should parenthesize the equation number
* Look into ggplot on Michael's paper to see how he did it, could make figures look nicer
* Continue working on it with Prof. Yan after graduation, see if you can get published!

## 4/19 Minutes
* 3 digits on Multiple Regression Table
* Use the \times command for that table as well
* Mention R^2, SER, etc. all in the text after the table
* Protect citations with {} to capitalize letters
* Use pdf function, push it into repository
* Negative sign via math mode in Multiple Regression Table
* Don't start a sentence with numbers (page 12, "90th to 95th").
* Quotations on the left hand side should be the key under escape, `, otherwise it looks backwards.
* Center columns in all tables
* Table 1 is the subjective part, discuss that part a bit more
	* Include that this is a limitations that could change, could be tuning to get R^2 as high as possible
* Paragraph on page 4 is too long, break it up
* Citation on page 3, list organization as author
	* (author, year) style for citations)
* Add more in the Discussion section about limitations
* American Journal of Undergraduate Research, Journal of Sports Analytics

## 4/5 Minutes
* Keywords are required, should be listed in alphabetical order, and should not repeat any words that are in the title
* For tables, there should only be one horizontal line, after the initial row
	* Using the xtable package should assist in creating your tables
* Tables also need to fit, so if an entry needs to take up 2 rows, so be it
* No title needed for graphs that already have a caption
* Line width is currently 102, want to get it to 80
* Use tbp instead of H, tables need to be "float"
* Professor Yan putting in comments in red in Manuscript file
* Delete all vfills, do not need to manually space like that
* Delete the lines of code that number equations and tables
* Don't need to include Acknowledgements section, unless you have something to thank them for
* citet and citep for bibliography
	* Key for next week's meeting, add Literature Review and Bibliography
* Work on the spacing, keep in mind every blank line is a new paragraph
* Put multiple regression coefficients in a table, with coefficient, standard error, and p-value, don't take a screenshot of the output
* Don't use PNG files, change the R code to generate PDF files instead
* Add to Intro
* Break down Data into smaller sections
* Methods: fix equation, see how Prof. Yan did it
* Refer to your tables and figures throughout the paper.

## 3/29 Minutes
* The 2 graphs that look off are due to different ranges in the metrics, explain why these metrics have different ranges and why it makes sense
* Distribution graph in order to tell the legend, use median, not mean? Would provide more even breakage
* Clean up repo folder, get pdf to compile
* Discussion section: Discuss why this metric lines up with others, and why people should be using it

## 3/22 Minutes
* Do not need the extra files Michael had in his thesis, because I am using a .tex file, not .rmd
* Use Michael's "Response to Comments" template in order to get the .tex file to compile
* Plots to include in manuscript
	* All 4 existing measures I'm comparing with vs. PAR
	* Breaking down PAR by position (top 10 at each position)
* Highlight the one player that has an 8 PAR and an 8 VORP (massive outlier, I believe it is Nikola Jokic)
* Discuss the idea of having a negative PAR, or a negative VORP
* Legend for the scale of PAR, where a certain PAR value ranks you in terms of player role
* Literature Review should include any existing studies of how effective metrics are
	
## 3/9 Minutes
* Load coefficient vectors into the .csv file, call them from there.
* Once coefficient vectors are worked out, work on getting R^2 back up to where you want
	* Could look at it as an optimization problem, where you are finding the best X (coefficient vector) to raise your R^2.
* Focus first on shooting guards, tweaking that, as its R^2 is lowest, and that is probably what is lowering the total R^2.
* Explain more in manuscript how PAR differs from VORP and BPM.
* Start more on basis of manuscript, due on April 30th.

## 3/4 Minutes
* Literature Review not needed, include it as a part of the Introduction
* Introduction needs to answer 3 questions
    * Why is this interesting/important?
    * What has been done before about this topic? (Literature Review portion)
    * What am I introducing that is new?
* Citep to cite sources (see Michael's paper)
* Break Data section into smaller paragraphs
    * Use a blank line in latex to introduce a new paragraph
* Change line width to 80 to fix one line appearing on the manuscript file
* Introduce citations.bib file, and analyze why Manuscript file isn't compiling
* Academic journals for citations, only use blogs when needed
* Reference R and BasketballReference as well
* For the R file, list coefficients as a vector for each position, so that the function can be just one, and you can call the coefficient vector depending on the player's position.
    * This way, the .csv file can be all positions together, and the functions can be just one as well, rather than one for each position.
* Methods section, compare with existing methods, describe how the statistic was made
* Look into the coefficients in VORP/BPM, are they entirely subjective? Might have to change them a bit
* Put comments in manuscript and R file, so it is easier to read.

## 2/22 Minutes
* PPM should be equal to total number of points by that team / 240 (5 players * 48 minutes per game) <- include 72 games in the season in this stat? See how it lines up. PPM will be a comparison of an individual player's points/minutes played and that above statistic.
* High R^2 = good, but don't want it too high, want some of your metric to be its own creation, cannot be explained by other data.
* Change minutes file to be in a mockdown format.
* Look more into VORP and how it is calculated, is BPM involved? Tweak PAR calculation as needed so that PAR and VORP are correlated relatively highly, because they should be.
* Create a manuscript in .tex file to see your thinking
* Put scholarly articles into bib files, briefly describe each

## 2/15 Minutes
* Put R code in “Code” folder
* R Mockdown template based on Michael’s file
   * Mimic it for your own R code and paper itself
* Analysis in a .rmd file, manuscript in a text file
* For PPM (Points Per Minute), keep it simple, if you have time, complicate it later
* Maybe scale to be PPM * 100
* All minutes in a .md file, in reverse chronological syntax
* Quickstart file
* Main idea for now = setting up the regression
   * PPM could be something you estimate from this model
* Regress total points of a team and how many minutes a player has played
* Compare correlation of this with correlation of PAR, compare correlation of PAR with correlation of other metrics

## 2/10 Minutes
* Create R program to take data, create metrics, and then standardize them
* Put raw data in .csv file in data folder on Git
* Rest of the data created by an R program
* To tell whether or not PAR is a good statistic, compare it with other statistics via correlation matrices
* Team points/minutes a certain player plays
* Fit a regression with this as the predictor, look at the correlation coefficients
   * Close to 1 = strong correlation
* Compare correlation of this with my metric as well as others

## 2/1 Minutes
* 4 Folders in the main branch, not branches themselves
   * Manuscript
   * Code
   * Data
   * References - include bibtex link for papers such as Greg Matthews’
      * Give a 1 to 2 sentence summary on each article
* Analyzing my data so far
* Check whether top players are in fact top with my metric PAR
* How does my metric line up with other metrics used in basketball?
   * That would be how we use PAR as an observation on other things, not just as a response
* Center and standardize and plot the 5 metrics, including PAR, to get them on the same scale (variance of 1)
   * Offensive and Defensive points, positional adjustment, points per win, and PAR
* Cluster graphs for the metrics to see if players with similar play styles do in fact line up
* 5 or 6 github commands are really needed, push, pull, commit, add, status, etc.
   * Become more familiar with these while doing project
* In the future, create an R program that will allow these functions to run
* Data Science Lab, UConn Sports Analytics on YouTube.

## 1/25 Minutes
* 3 folders
   * Manuscript: For writing part of thesis
   * Data: For files that data is recorded on
   * Code: Relative paths
* Observed Y for model to fit: PAR (Points Above Replacement)
   * How many points a team gives up or gains by replacing a certain player with a league average player at his position
* Study the papers that presented WAR in baseball, Greg Matthews involved?
* Collect data (from 2020-2021 season, so no need to update every day) for every player, including their position
* Average out all stats for each position (.csv file for each position) and make a formula similar to WAR, but relative to points in a game, not wins in a season
* Put these notes in the repository, to go over next meeting
git add 1_25 Minutes.txt
git commit -m "initial commit"
