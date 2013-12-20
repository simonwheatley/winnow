# Winnow

This is a bashscript designed to help you winnow out spam competition
entries. It takes a list of entries in a `emails.csv` file, with each
email on it's own line with nothing else on that line (see 
`emails-sample.csv`), it creates a file called `good-emails.csv`.

The goodness or otherwise of an email address is determined by whether
the domain is in the `bad-domains.csv` file. Feel free to fork this repo
and submit any additions to bad domains as you find them, or just report
them here as issues!

## To Use

To run this script you will need some terminal knowledge. Put your 
`emails.csv` file into directory and run:

`$ ./winnow.sh`

Then grab the ``good-emails.csv` and pick your winner! Remember to check 
the winner just in case they're in a bad domain Winnow doesn't know about.

