# Timeseries Tools

Tools for analyzing and plotting timeseries data in realtime

## Documentation
The documentation is available on [readthedocs](https://timeseriestools.readthedocs.io/en/latest/).

## Quick Start

```
git clone --recursive https://github.com/jfennick/timeseriestools.git
cd timeseriestools
./install_conda.sh
conda create --name tst
conda activate tst
./conda_devtools.sh
pip install -e ".[all]"
```

The `timeseriesplots` command will watch a directory (recursively, default .) for files containing timeseries data and plot them in realtime.

```
timeseriesplots <watchdir> <pat1> <pat2> <...>
```

![Plots](plots.png)
