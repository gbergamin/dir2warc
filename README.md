# dir2warc
creates a standard WARC file with the content of a local directory

syntax: _./preparawarc.sh [directory]_

prerequisites: [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier), [Warcit](https://github.com/webrecorder/warcit)

parameter: [directory] (this [directory] must be the child of the _current directory_ i.e. where _preparawarc.sh_ is installed)

This bash script (_preparawarc.sh_):
* creates an html page named [UUID]index.html cointaining a list of files included in the _[directory]_
* creates a txt page named [UUID]index.txt cointaining a list of files included in the _[directory]_: every line contains three fields tab separated (md5, filename,  new URLidentifier)
* creates a standard WARC using the name of the _[directory]_ used as parameter ex. g._[directory]_.warc.gz.
  
Please note:
* the new URL identifier is formed by _http://[UUID].memoria.bncf/filename_. Of course 'memoria.bncf' can be changed according to one's preferences
* both html page and text page created, are available inside the WARC. 
  * the html page can be used to navigate on the web  the content of the [directory] using applications like _webrecorder_ or _wayback machine_ and the new WARC created
  * the txt can be used as a sort of map and/or ledger of the content included in WARC: for every file it links new identifiers with the old ones and contains also its md5 hash
  
  ## test case
  
  * peace_love_and_metadata.warc.gz is a test WARC created by preparawarc.sh
  
  * peace_love_and_metadata is a test directory containing sample pdf file and index files created by preparawarc.sh
  


