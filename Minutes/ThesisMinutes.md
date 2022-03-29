# MINUTES

## 3/29 Minutes
* The 2 graphs that look off are due to different ranges in the metrics, explain why these metrics have different ranges and why it makes sense
* Distribution graph in order to tell the legend, use median, not mean? Would provide more even breakage
* Clean up repo folder, get pdf to compile

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
