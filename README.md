animint2 gallery

Instructions for contribution:

## Make a data viz

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

## Add your data viz to the gallery
  
* If you have not yet forked the gallery, then [fork the gallery](https://github.com/animint/gallery/fork) and make sure your fork includes the `gh-pages` branch.
* If you have not yet cloned your fork, then `git clone git@github.com:your_github_username/gallery ~/R/gallery`
* Add `your_github_username/new_github_repo` on a new line in
  `repos.txt`
* Run `animint2::update_gallery()` to update and push the
  changes to the `gh-pages` branch of your fork.
* After a few minutes, your updated gallery will appear on https://your_github_username.github.io/gallery/ 

For more info about galleries, including how to create your own, read
[The animint2 Manual, Chapter 5, Sharing animints, section Organizing
animints in a
gallery](https://rcdata.nau.edu/genomic-ml/animint2-manual/Ch05-sharing.html#gallery).
