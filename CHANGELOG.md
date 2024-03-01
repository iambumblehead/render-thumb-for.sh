# changelog

 * 0.0.1 _Feb.20.2024_
   * [initial setup.](https://github.com/iambumblehead/render-thumb-for.sh/pull/1)
   * added initial shell script, README.md, CHANGELOG.md and LICENSE
   * added ci-job shellcheck
   * added behaviour to render images, differentiating svg
   * added .gitattributes to one day filter demo images included at git release
   * experimented w/ libsixel `img2sixel` and imagemagick `covert`, decided on `convert`
   * investigated thumbnail generation for other file types
 * 0.0.2 _Feb.29.2024_
   * added video thumb generation
   * added functions return video length, dimensions using ffmpeg