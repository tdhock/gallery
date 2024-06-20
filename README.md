# animint2 Gallery

[animint2](https://cran.r-project.org/web/packages/animint2/) is an R package for animated and interactive data visualizations. This repository is for the animint2 gallery, which showcases examples of what `animint2` can do. Additions to the gallery are encouraged.

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
* If you have not yet cloned your fork, then `git clone git@github.com:YOUR_GITHUB_USERNAME/gallery ~/R/gallery`
* Add `YOUR_GITHUB_USERNAME/new_github_repo` on a new line in
  `repos.txt`
* Run `animint2::update_gallery()` to update and push the
  changes to the `gh-pages` branch of your fork.
* After a few minutes, your updated gallery will appear on https://YOUR_GITHUB_USERNAME.github.io/gallery/ 
* Open a PR from your fork's `gh-pages` branch (head/compare), into the animint/gallery `gh-pages` branch (base), by clicking "Contribute" button on your fork's github web page, or via a URL like  https://github.com/animint/gallery/compare/gh-pages...YOUR_GITHUB_USERNAME:gallery:gh-pages?expand=1
* Make sure the PR description has a link such as
  https://YOUR_GITHUB_USERNAME.github.io/gallery/ to the rendered
  version of your fork of the gallery, so reviewers can quickly
  preview what the new gallery would look like after merging the PR.

For more info about galleries, read [The animint2 Manual, Chapter 5,
Sharing animints, section Organizing animints in a
gallery](https://rcdata.nau.edu/genomic-ml/animint2-manual/Ch05-sharing.html#gallery).
