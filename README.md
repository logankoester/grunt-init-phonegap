# grunt-phonegap-init
> Interactively generate a new Phonegap project using [grunt-phonegap](https://github.com/logankoester/grunt-phonegap).

[![Build Status](http://ci.ldk.io/logankoester/grunt-init-phonegap/badge)](http://ci.ldk.io/logankoester/grunt-init-phonegap/)
[![Dependency Status](https://david-dm.org/logankoester/grunt-init-phonegap.png)](https://david-dm.org/logankoester/grunt-init-phonegap)
[![devDependency Status](https://david-dm.org/logankoester/grunt-init-phonegap/dev-status.png)](https://david-dm.org/logankoester/grunt-init-phonegap#info=devDependencies)
[![Gittip](http://img.shields.io/gittip/logankoester.png)](https://www.gittip.com/logankoester/)

![Demo](https://cloud.githubusercontent.com/assets/19319/3005347/d911f6c6-ddda-11e3-9c87-679ca82b5499.gif)


## Jump to Section

* [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [Release History](#release-history)
* [License](#license)

## Installation
[[Back To Top]](#grunt-phonegap)

If you haven't already done so, install [grunt-init](http://gruntjs.com/project-scaffolding).

Once grunt-init is installed, place this template in your `~/.grunt-init/` directory. It's recommended that you use git to clone this template into that directory, as follows:

    git clone https://github.com/logankoester/grunt-init-phonegap.git ~/.grunt-init/phonegap

_(Windows users, see the documentation for the correct destination directory path)_



## Usage
[[Back To Top]](#grunt-phonegap)

At the command-line, cd into an empty directory, run this command and follow the prompts.

    grunt-init phonegap


## Contributing
[[Back To Top]](#grunt-phonegap)

Fork the repo on Github and open a pull request. Note that `template.js` and `test/template_test.js` are the output of
CoffeeScript files in `src/`, and will be overwritten if edited by hand.

Likewise, `README.md` is the output of the `grunt docs` task, and will be overwritten. README updates should be made in
the Markdown files under `docs/`.

Please run `grunt build` before submitting a pull request. The build output should be included with your changes.


## Release History
[[Back To Top]](#grunt-phonegap)

You can find [all the changelogs here](/docs/releases).

### Latest changelog is from v1.0.0.md:

#### v1.0.0

* Adds connect and watch with livereload mounted in `www/` ([#4](https://github.com/logankoester/grunt-init-phonegap/pull/4)) - thanks [@gabrielpoca](https://github.com/gabrielpoca)!


## License
[[Back To Top]](#grunt-phonegap)

Copyright (c) 2014 Logan Koester.
Released under the MIT license. See `LICENSE-MIT` for details.


