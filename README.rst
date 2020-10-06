
My vim/neovim config
====================

Configuration files for vim and neovim.
The neovim config file just loads the `.vimrc` file.
The files are copied to their typical locations:

* `vimrc` : `~/.vimrc`
* `init.vim` : `~/.config/nvim/init.vim`

Neovim Version
--------------

To take advantage of some of the newer features for neovim, I decided to upgrade from the stock version that is available in the Ubuntu 18.04 package repositories.  Instructions can be found on the `neovim github page <https://github.com/neovim/neovim/wiki/Installing-Neovim>`_ . In brief:

.. code:: bash

    $ sudo add-apt-repository ppa:neovim-ppa/stable
    $ sudo apt-get update
    $ sudo apt-get install neovim

This will install neovim v0.4.3 as of 2020-10-04.

Neovim Python
-------------

Some of the plugins I want to use require update versions of Python packages.  Since noodling around with the system Python can cause unintended issues with one's OS, at least one plugin recommends using a Python virtualenv.  Since I routinely use `virtualenvwrapper <https://virtualenvwrapper.readthedocs.io/en/latest/>`_ , I just created a virtual environment called "nvimenv" and pip-installed the *neovim* and *jedi* packages from `PyPI <https://pypi.org/>`_ .  I then configured my vimrc to point to that specific python interpreter.

Plugins
-------

I am currently trying out the following plugins:

* gruvbox: a popular color scheme
* deoplete: programming autocompletion (requires additional language plugins)
* deoplete-jedi: Python support for deoplete
* jedi-vim: Python language support like jumping to definition, display docs, rename functions ...
* vim-airline: make the status line more useful and colorful
* NERDcomment: programming language aware comment / uncomment support
* NERDTree: IDE-like file explorer
* Neomake: run code linters
* Neoformat: run code formatters

I use `vim-plug <https://github.com/junegunn/vim-plug>`_ to manage my plugins.  I installed it with:

.. code:: bash

    $ curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

You need to run `:PlugInstall` from within vim to install the plugins.

Other Changes
-------------

* I enabled relative number.  It is actually more useful than I thought it would be.

