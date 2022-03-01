# rmutil R package
Bruce Swihart  
Mar 2022

## Submission

  * I messed up when I took over as maintainer -- I'm resetting license to GPL>=2 as Lindsey originally had it.

## Test environments
Local OS X: R version 4.1.2 (2021-11-01)
  * Platform: x86_64-apple-darwin17.0 (64-bit)
  * Running under: macOS Mojave 10.14.6
rhub::check(platform = "debian-clang-devel"): Debian Linux, R-devel, clang, ISO-8859-15 locale
rhub::check(platform = "windows-x86_64-devel"): Windows Server 2022, R-devel, 64 bit
macOS M1 Builder 
winbuilder     release (both i386 and x64) 
winbuilder old release (both i386 and x64) 

## R CMD check results
There were no ERRORs or WARNINGs or NOTEs.


## Resubmission 1

  * added Author information of TOMS614/INTHP
  * fixed void / SEXP registration issue (LTO / valgrind additional issues)
  * fixed 0-sized array warning 
  * Fixed call_R Issue https://github.com/swihart/rmutil/issues/11
  * Updated links to https: where appropriate

## Test environments
Local OS X: R version 4.1.2 (2021-11-01)
  * Platform: x86_64-apple-darwin17.0 (64-bit)
  * Running under: macOS Mojave 10.14.6
rhub::check(platform = "debian-clang-devel"): Debian Linux, R-devel, clang, ISO-8859-15 locale
rhub::check(platform = "windows-x86_64-devel"): Windows Server 2022, R-devel, 64 bit
macOS M1 Builder: https://mac.r-project.org/macbuilder/results/1643749922-d94d516d70b8bd72/
winbuilder: https://win-builder.r-project.org/A1nVi8ICq8rH/


## R CMD check results
There were no ERRORs or WARNINGs or NOTEs.

## Submission 1


  * Fixed call_R Issue https://github.com/swihart/rmutil/issues/11
  * Updated links to https: where appropriate
  
  
## Test environments
Local OS X: R version 4.1.2 (2021-11-01)
  * Platform: x86_64-apple-darwin17.0 (64-bit)
  * Running under: macOS Mojave 10.14.6
rhub::check(platform = "debian-clang-devel"): Debian Linux, R-devel, clang, ISO-8859-15 locale
rhub::check(platform = "windows-x86_64-devel"): Windows Server 2022, R-devel, 64 bit
macOS M1 Builder: https://mac.r-project.org/macbuilder/results/1643420508-76f46f833c9dced1/


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



