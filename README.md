animint2 gallery

Instructions for contribution:

* First `remotes::install_github("animint/animint2@84-move-gallery-from-blocks-to-gh-pages")` to get the most recent code with support for the `source` option.
* Create a data `viz` object with options:
  * `title` string describing the data viz, 
  * `source` URL of data viz source code.
* In R, run `animint2pages(viz,"new_github_repo")` to create a new
  GitHub repo with your viz deployed in the gh-pages branch.
* Add a `Capture.PNG` file (screenshot of data viz) to the gh-pages
  branch of that repo.
* Add `your_github_username/new_github_repo` on a new line in
  [repos.txt](repos.txt).
