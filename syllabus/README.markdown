Compile
=======

1. Fork and or clone the repository.

2. Download and install [Pandoc](http://johnmacfarlane.net/pandoc/).

3. Using the command line, `cd` into your local repository. For me, this commmand would be `cd /Users/ericpgreen/Dropbox/Repositories/github/courses/mch/syllabus`

4. Run the following command to compile into one markdown file: `pandoc -o ../README.md -t markdown_github *.md`

5. Run the following command to compile into one pdf: `pandoc -V geometry:margin=1in -o ../printable-version.pdf *.md`