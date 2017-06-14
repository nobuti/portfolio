# Origen

Portfolio made with express, sass, grunt and love.

## Requirements

You'll need to have the following items installed before continuing.

  * [Node.js](http://nodejs.org): Use the installer provided on the NodeJS website.
  * [Gulp](http://gulpjs.com/): Run `[sudo] npm install --global gulp-cli`

## Quickstart

```bash
git clone git@github.com:nobuti/portfolio.git
npm install
```

While you're working on your project, run:

`gulp`

And you're set!

## Directory Structure

  * `assets/`: Assets files like images, javascripts or sass files.
  * `public/`: Public assets, linked from views. Includes stylesheets and javascripts folders. The static html files are served from this directory.
  * `views/`: Html views flawored as nunjucks files. Include partial and layout folders.
  * `index.js`: Express file.
  * `Gulpfile.js`: Gulp task runner.

## Github pages support

`gulp deploy`
