animint2 gallery

Instructions for contribution:

* First run `install.packages("animint2")` to get the most recent
  version from CRAN (>= 2023.11.21) with support for the `source`
  option, which is required for publishing an animint to a gallery.
* Create a data `viz = animint(ggplots, title="data viz title", source="https://link.to/your_code.R")` object with options:
  * `title` string describing the data viz, 
  * `source` URL of data viz source code.
* In R, run `animint2pages(viz,"new_github_repo")` to create a new
  GitHub repo with your viz deployed in the gh-pages branch. More
  detailed instructions in [The animint2 Manual, Chapter 5, Sharing
  animints, section Publish on GitHub
  Pages](https://rcdata.nau.edu/genomic-ml/animint2-manual/Ch05-sharing.html#pages).
* Add a `Capture.PNG` file (screenshot of data viz) to the gh-pages
  branch of that repo.
* Add `your_github_username/new_github_repo` on a new line in
  [repos.txt](https://github.com/animint/gallery/blob/gh-pages/repos.txt) via a PR.
* We will run `animint2::update_gallery()` to update and push the
  changes to the gh-pages branch of this repo.
* Your viz will appear as a new row on https://animint.github.io/gallery/

For more info about galleries, including how to create your own, read
[The animint2 Manual, Chapter 5, Sharing animints, section Organizing
animints in a
gallery](https://rcdata.nau.edu/genomic-ml/animint2-manual/Ch05-sharing.html#gallery).
