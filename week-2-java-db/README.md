# README #

This is the skeleton code you will use for the Week 2 PASTA homework tasks.

Inside you will find a number of Java files. You are most concerned with buffer.\* and buffer.policies.\*

To submit, zip up the src folder and upload it to pasta (info3404.it.usyd.edu.au)

## Suggestions ##
I suggest you take some time to understand what a Page is and what a PageId is. 

If you're especially brave, have a look at the Disk Manager and HeaderPage. 
Do note, the HeaderPage has more to do with the File Access Methods part of our architecture so don't worry if it's a bit confronting at the moment.

## Questions to keep in mind ##

* What is the difference between LRU and CLOCK
* Why would we use CLOCK over GLOCK?
* Are any of these algorithms guaranteed to give us the optimal result
* Why is having a "good" Buffer Policy important for a Database System