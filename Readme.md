# ny (fork of n with iojs support)

Node and io.js version manager written in bash with no subshells, no profile setup, no convoluted api, just simple.

 ![](https://i.cloudup.com/59cA8VEDae.gif)

## Installation

    $ npm install -g ny

or

    $ make install

to `$HOME`. Prefix later calls to `ny` with `NY_PREFIX=$HOME`

    $ NY_PREFIX=$HOME make install

### Installing Binaries

Install a few nodes:

    $ ny 1.0.4
    $ ny 1.0.2
    $ ny 1.0.1

Type `ny` to prompt selection of an installed iojs. Use the up /
down arrow to navigate, and press enter or the right arrow to
select, or ^C to cancel:

    $ ny

      1.0.1
    ο 1.0.3
      1.0.4

Use or install the latest official release:

    $ ny latest

Use or install the stable official release:

    $ ny stable

Switch to the previous version you were using:

    $ ny prev

### Removing Binaries

Remove some versions:

    $ ny rm 1.0.4 v1.0.1

Instead of using `rm` we can simply use `-`:

    $ ny - 1.0.4

### Binary Usage

When running multiple versions of iojs, we can target
them directly by asking `ny` for the binary path:

    $ ny bin 1.0.4
    /usr/local/n/versions/1.0.4/bin/node

Or by using a specific version through `ny`'s `use` sub-command:

    $ ny use 1.0.4 some.js

with flags:

    $ ny as 1.0.4 --debug some.js

## Usage

 Output from `ny --help`:

    Usage: ny [options] [COMMAND] [args]

    Commands:

      ny                            Output versions installed
      ny latest                     Install or activate the latest iojs release
      ny stable                     Install or activate the latest stable iojs release
      ny <version>                  Install iojs <version>
      ny use <version> [args ...]   Execute iojs <version> with [args ...]
      ny bin <version>              Output bin path for <version>
      ny rm <version ...>           Remove the given version(s)
      ny --latest                   Output the latest iojs version available
      ny --stable                   Output the latest stable iojs version available
      ny ls                         Output the versions of iojs available
      ny c                          Output the current version of iojs installed

    Options:

      -V, --version   Output current version of n
      -h, --help      Display help information

    Aliases:

      which   bin
      use     as
      list    ls
      -       rm

## Details

 `ny` by default installs node to _/usr/local/ny/versions_, from
 which it can see what you have currently installed, and activate previously installed versions of node when `ny <version>` is invoked again.

 Activated nodes are then installed to the prefix _/usr/local_, which of course may be altered via the __NY_PREFIX__ environment variable.

 To alter where `ny` operates simply export __NY_PREFIX__ to whatever you prefer.

## License

(The MIT License)

Copyright (c) 2015 Kenan Sulayman &lt;kenan@sly.mn&gt;
Copyright (c) 2014 TJ Holowaychuk &lt;tj@vision-media.ca&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
