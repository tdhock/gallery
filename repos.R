library(data.table)
gh_pages <- tempfile()
gert::git_clone(".", gh_pages)
gert::git_branch_checkout("gh-pages", repo=gh_pages)
get_repo_row <- function(repo){
  viz_dir <- tempfile()
  origin_url <- paste0("https://github.com/", repo, ".git")
  gert::git_clone(origin_url, viz_dir)
  gert::git_branch_checkout("gh-pages", repo=viz_dir)
  Capture.PNG <- file.path(viz_dir, "Capture.PNG")
  if(!file.exists(Capture.PNG)){
    stop(sprintf("gh-pages branch of %s should contain file named Capture.PNG (screenshot of data viz)", repo))
  }
  repo.png <- sprintf("repos/%s.png", repo)
  user.dir <- dirname(repo.png)
  dir.create(user.dir, showWarnings = FALSE, recursive = TRUE)
  file.copy(Capture.PNG, repo.png)
  gert::git_add(Capture.PNG, ".")
  plot.json <- file.path(viz_dir, "plot.json")
  jlist <- RJSONIO::fromJSON(plot.json)
  commit.row <- gert::git_log(max=1, repo=viz_dir)
  repo.row <- data.table(
    repo, commit.POSIXct=commit.row$time)
  to.check <- c(
    source="URL of data viz source code",
    title="string describing the data viz")
  for(attr.name in names(to.check)){
    attr.value <- jlist[[attr.name]]
    if(
      is.character(attr.value)
      && length(attr.value)==1
      && !is.na(attr.value)
      && nchar(attr.value)>0
    ){
      set(repo.row, j=attr.name, value=attr.value)
    }else{
      stop(sprintf("plot.json file in gh-pages branch of %s should have element named %s which should be %s", repo, attr.name, to.check[[attr.name]]))
    }
  }
  repo.row
}  
repos.dt <- fread("repos.txt",header=FALSE,col.names="repo")
meta.dt.list <- list()
error.dt.list <- list()
add.POSIXct <- Sys.time()
for(repo in repos.dt$repo){
  tryCatch({
    meta.dt.list[[repo]] <- data.table(add.POSIXct, get_repo_row(repo))
  }, error=function(e){
    error.dt.list[[repo]] <<- data.table(add.POSIXct, repo, error=e$message)
  })
}
(meta.dt <- rbindlist(meta.dt.list))
(error.dt <- rbindlist(error.dt.list))

