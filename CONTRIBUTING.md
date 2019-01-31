# Contributing

Contributing to ebooks-catalog just involves sending a pull request.


## Pull Requests

### Template for adding a new book.

You must install git-lfs, Please check the below link on how to install git-lfs on your setup.

https://github.com/git-lfs/git-lfs


Fork this repository,

Then clone,

```
git clone https://github.com/<your username here>/ebooks-catalog && cd ebooks-catalog

```

Setup git-lfs,

```
git lfs install

```

Please ensure that the book name is in Camel Case and consists of the title and the author separated by a '-'.

Title-Author.pdf

For a second edition book, the format should be,

Title2-Author.pdf

Use the bulk add script to commit books from the target directory.

Push to remote and send a PR.


### Template for patches / new-features.

For sending patches or a feature, raise an issue on the repo and send a PR referencing that issue.
