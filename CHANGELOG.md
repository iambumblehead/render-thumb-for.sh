# changelog

 * 0.1.1 _Mar.28.2024_
   * add [notice; vifm image preview not working](https://github.com/iambumblehead/thu.sh/pull/57)
   * add [pdf test asset and pdf test](https://github.com/iambumblehead/thu.sh/pull/58)
   * add [video test asset and video test](https://github.com/iambumblehead/thu.sh/pull/58)
   * add [iTerm2 detection](https://github.com/iambumblehead/thu.sh/pull/60)
   * add [font test asset and test](https://github.com/iambumblehead/thu.sh/pull/62)
   * add [audio test asset and test](https://github.com/iambumblehead/thu.sh/pull/63)
 * 0.1.0 _Mar.27.2024_
   * remove [badgesize.io badge,](https://github.com/iambumblehead/thu.sh/pull/52) not working
   * use [integer timeout value](https://github.com/iambumblehead/thu.sh/pull/53) for darwin/mac read
   * add [iterm2 esc queries](https://github.com/iambumblehead/thu.sh/pull/54)
 * 0.0.9 _Mar.16.2024_
   * simplify [multiline string definition](https://github.com/iambumblehead/thu.sh/pull/48)
 * 0.0.8 _Mar.22.2024_
   * added [less trivial tests](https://github.com/iambumblehead/thu.sh/pull/33)
   * support returning queried data [using -p arg](https://github.com/iambumblehead/thu.sh/pull/34)
   * support [both imagemagick 7 an 8](https://github.com/iambumblehead/thu.sh/pull/36)
   * use cell size rather than window to [construct view area size.](https://github.com/iambumblehead/thu.sh/pull/37) Continue using window size query when when preview size un-specified.
   * use [GPLv3 license](https://github.com/iambumblehead/thu.sh/pull/40)
   * rename [render-thumb-for.sh to thu.sh](https://github.com/iambumblehead/thu.sh/pull/41)
   * separate [image-generation from image-display.](https://github.com/iambumblehead/thu.sh/pull/42) Will allow more control with caching and session state, testing etc.
   * detect foot version lte 1.16.2 and [show warning message.](https://github.com/iambumblehead/thu.sh/pull/43)
   * improve stored [state usage (so that it works with vifm)](https://github.com/iambumblehead/thu.sh/pull/44)
   * added [size badge to README](https://github.com/iambumblehead/thu.sh/pull/46)
   * update demo gif to [use new thu.sh command name](https://github.com/iambumblehead/thu.sh/pull/47)
 * 0.0.7 _Mar.14.2024_
   * improve [support for xterm](https://github.com/iambumblehead/thu.sh/pull/25)
   * added [support for cell units](https://github.com/iambumblehead/thu.sh/pull/26)
   * migrate [from convert command to magick](https://github.com/iambumblehead/thu.sh/pull/26), per [advice here](https://github.com/ImageMagick/ImageMagick/discussions/7168) (maybe both 'convert' and 'magick' should be supported?)
   * support [pdf images with imagemagick](https://github.com/iambumblehead/thu.sh/pull/26)
   * added [support for zoom param, eg -z 3](https://github.com/iambumblehead/thu.sh/pull/26), used for foot <= 1.16.2, see [link](https://codeberg.org/dnkl/foot/issues/1643)
   * added bash_unit [unit test and pipeline](https://github.com/iambumblehead/thu.sh/pull/30)
   * added logic to [determine if stdout available,](https://github.com/iambumblehead/thu.sh/pull/31) eg to detect if escape queries need to be send to tty rather than stdout
 * 0.0.6 _Mar.07.2024_
   * added sixel and kitty [differentiation to README](https://github.com/iambumblehead/thu.sh/pull/16)
   * added [sixel detection](https://github.com/iambumblehead/thu.sh/pull/17)
   * added [getopts support](https://github.com/iambumblehead/thu.sh/pull/23)
   * improve [kitty image support](https://github.com/iambumblehead/thu.sh/pull/24)
 * 0.0.5 _Mar.07.2024_
   * added support iterm2 mac [#14](https://github.com/iambumblehead/thu.sh/pull/14)
   * added support kitty mac [#15](https://github.com/iambumblehead/thu.sh/pull/15)
 * 0.0.4 _Mar.06.2024_
   * added pdf support for optional mutool command [#13](https://github.com/iambumblehead/thu.sh/pull/13)
 * 0.0.3 _Mar.06.2024_
   * added pdf thumb generation [#4](https://github.com/iambumblehead/thu.sh/pull/4)
   * added font thumb generation [#5](https://github.com/iambumblehead/thu.sh/pull/5)
   * added epub thumb generation [#7](https://github.com/iambumblehead/thu.sh/pull/7)
   * added function to return simplified filetype for file [#6](https://github.com/iambumblehead/thu.sh/pull/6)
   * use temp directory as generated image destination [#8](https://github.com/iambumblehead/thu.sh/pull/8)
   * remove commented-out example calls [#9](https://github.com/iambumblehead/thu.sh/pull/9)
   * added demo gif [#10](https://github.com/iambumblehead/thu.sh/pull/10)
   * smoke-tested the release pipeline and released v0.0.1
   * begin integrating with vifm and [update the README](https://github.com/iambumblehead/thu.sh/pull/11)
   * added vifm [gif to README](https://github.com/iambumblehead/thu.sh/pull/11)
   * smoke-tested [usage of exiftool](https://github.com/iambumblehead/thu.sh/pull/12)
 * 0.0.2 _Mar.02.2024_
   * added video thumb generation [#2](https://github.com/iambumblehead/thu.sh/pull/2)
   * added audio thumb generation [#3](https://github.com/iambumblehead/thu.sh/pull/3)
   * added functions return video length, dimensions using ffmpeg
 * 0.0.1 _Feb.20.2024_
   * [initial setup.](https://github.com/iambumblehead/thu.sh/pull/1)
   * added initial shell script, README.md, CHANGELOG.md and LICENSE
   * added ci-job shellcheck
   * added behaviour to render images, differentiating svg
   * added .gitattributes to one day filter demo images included at git release
   * experimented w/ libsixel `img2sixel` and imagemagick `covert`, decided on `convert`
   * investigated thumbnail generation for other file types
