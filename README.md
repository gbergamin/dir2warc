# dir2warc
create a standard WARC file with the content of a local directory

syntax: _./preparawarc.sh [directory]_

prerequisites: UUID, WARCIT

parameter: directory (must be the child of the current directory -- where _preparawarc.sh_ is)

This bash script:
* creates an html page named [UUID]index.html cointaining a list of files included in the _[directory]_
* creates a txt page named [UUID]index.txt cointaining a list of files included in the _[directory]_: every line contains three fields tab separated (md5, filename,  new URLidentifier)
* creates a standard WARC using the name of the _[directory]_ used as parameter ex. g._[directory]_.warc.gz.
  
Please note:
* the new URL identifier is formed by _http://[UUID].memoria.bncf/filename_. Of course 'memoria.bncf' can be changed according your preferences
* both html page and text page created, are available inside the WARC. 
  * the html page can be used to navigate the content using WARC players like _webrecorder_ or _waiback machine_
  * the txt can be used as a sort of map of the content included in WARC: it links new identifiers with the old one


