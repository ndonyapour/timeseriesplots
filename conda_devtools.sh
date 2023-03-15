#!/bin/bash -e
# NOTE: mamba is a drop-in replacement for conda, just much faster.
# (i.e. You can replace mamba with conda below.)
# See https://github.com/conda-forge/miniforge#mambaforge-pypy3
CONDA=conda
if [ "$(which mamba)" ]; then
    CONDA=mamba
fi

#$CONDA clean --all --yes

# pypy is ~2X faster than the regular python interpreter.
# We need to install it first so the dependency solver installs it bundled with python 3.9
# (pypy is not yet compatible with 3.10 and 3.11)
$CONDA install -y -c conda-forge pypy "python<3.10"

# NOTE: https://github.com/wearepal/data-science-types has been archived and is
# no longer under active development. So most of the API is covered, but there
# are some functions which are missing stubs.
$CONDA install -y -c conda-forge data-science-types

$CONDA install -y -c conda-forge shellcheck

# The ruptures library needs to compile its binary wheel during pip install
# Even though the compilers are already installed
# (i.e. the below command prints "All requested packages are already installed.")
# if you don't explicitly install the compilers package,
# the ruptures binary wheel build will fail with
# "#  include <stdlib.h>"
# ...
# "ERROR: Failed building wheel for ruptures"
$CONDA install -y -c conda-forge compilers

# The ruptures library also needs pkg-config and openblas. Otherwise:
# "../../scipy/meson.build:134:0: ERROR:
#  Dependency lookup for OpenBLAS with method 'pkgconfig' failed:
#  Pkg-config binary for machine 1 not found. Giving up."
#  Or my personal favorite:
# "../../meson.build:63:0: ERROR: Compiler gfortran can not compile programs."
$CONDA install -y -c conda-forge pkg-config openblas
