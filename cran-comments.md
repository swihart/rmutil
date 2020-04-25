# rmutil R package
Bruce Swihart  
Apr 2020

## Submission 1

  * In response to K. Hornik email regarding the stringsAsFactors=FALSE default in upcoming R versions, I did the following 3 edits:
  * add `stringsAsFactors=TRUE` to the v <- data.frame() call in the example of `tvctomat.Rd`
  * add `stringsAsFactors=TRUE` to the data.frame() call around line 1160 of the function `tvctomat()` in `objectrm.r` (`oldtvcov$tvcov <- data.frame(oldtvcov$tvcov,tvcv, stringsAsFactors = TRUE)`
  * turn `tvcv <- as.data.frame(as.vector(t(as.matrix(tvcov))))` into `tvcv <- data.frame(as.character(as.vector(t(as.matrix(tvcov)))),stringsAsFactors=TRUE)` around line 940 of the function `tvctomat()` in `objectrm.r`


## Test environments
* using platform: x86_64-pc-linux-gnu (64-bit) (`rhub::check_with_rdevel()`): R Under development (unstable) (2020-04-18 r78254)
* using platform: x86_64-w64-mingw32 (64-bit) (`rhub::check_on_windows()`): R version 4.0.0 (2020-04-24)
* local OS X install: R version 3.6.0 (2019-04-26) -- "Planting of a Tree"
* Ubuntu 16.04.6 LTS (on travis-ci): R version 3.6.2 (2017-01-27)


## R CMD check results
There were no ERRORs or WARNINGs or NOTEs.


# rmutil R package
Bruce Swihart  
Mar 2019

## Re-Submission 1

  * Applied more fixes pbetabinom and dbetabinom to return sensical values and print message for inputs that are not in the domain
  * removed the local generic weights (as suggested by K Hornik)

## Test environments
* local OS X install: R version 3.5.2 (2018-12-20) -- "Eggshell Igloo"
* Ubuntu 14.04.5 LTS (on travis-ci): R version 3.5.2 (2017-01-27)
* win-builder: R Under development (unstable) (2019-03-03 r76192)

## R CMD check results
There were no ERRORs or WARNINGs or NOTEs.


## Downstream dependencies
There are currently no downstream dependencies for this package.

# rmutil R package
Bruce Swihart  
May 2018

## Re-Submission 1

  * fixed an `Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’` NOTE.  

  * fixed an `_R_CHECK_LENGTH_1_CONDITION_=true` error.  This was communicated to me via email on Jan 25 2018.

  * fixed `_R_S3_METHOD_LOOKUP_BASEENV_AFTER_GLOBALENV_=true` errors. Added this info to NEWS.  Kurt Hornik has emailed me about these issues on Apr 2 and May 15.

## Test environments
* local OS X install: R version 3.4.1 (2017-06-30)
* ubuntu 12.04 (on travis-ci): R version 3.5.0 (2017-01-27)
* win-builder: R Under development (unstable) (2018-05-25 r74783) "Unsuffered Consequences"

## R CMD check results
There were no ERRORs or WARNINGs or NOTEs.


## Downstream dependencies
There are currently no downstream dependencies for this package.


# rmutil R package
Bruce Swihart  
November 2016  

## Resubmission 2
This is a resubmission.
1. Can you pls convince J. Lindsey to send a confirmation message?
--> Yes.  He should be sending one shortly from jlindsey@gen.unimaas.nl to 
CRAN@R-project.org, ligges@statistik.tu-dortmund.de, Kurt.Hornik@wu.ac.at

2. pls write the URL as:
 (available at <http://www.commanster.eu/rcode.html>).
--> Completed.  

## Resubmission 1
This is a resubmission.  In this version I have single quoted software names
in DESCRIPTION file and include a link to Lindsey's homepage to get the listed packages. 
The plan is to get all the listed packages on CRAN, but for now they are on his webpage.

## Test environments
* local OS X install: R version 3.3.2 (2016-10-31)
* ubuntu 12.04 (on travis-ci): R version 3.3.1 (2016-06-21)
* win-builder:        R Under development (unstable) (2016-11-22 r71678)

## R CMD check results
There were no ERRORs or WARNINGs. 

There was 1 NOTE:

* 1st submission (Package was archived on CRAN, see Miscellaneous)

## Downstream dependencies
There are currently no downstream dependencies for this package.

## Miscellaneous
As per the CRAN Repository Policy Version Revision 3577,

  *  Explain any change in the maintainer’s email address and if possible send confirmation from the previous address (by a separate email to CRAN@R-project.org) or explain why it is not possible. 

This Package was archived on CRAN.  I am resurrecting it.
I have Jim Lindsey's permission to be maintainer of his packages on CRAN.  Currently he has them in .zip files on his homepage:  http://www.commanster.eu/rcode.html.  He does not have access to the original email address he used when this package was on CRAN, and thus cannot send a separate confirmation email.  However, you can contact him at James Lindsey <jlindsey@gen.unimaas.nl>.



