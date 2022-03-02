# MINUTES

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