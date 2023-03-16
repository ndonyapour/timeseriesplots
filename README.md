# Timeseries Tools

Tools for analyzing and plotting timeseries data in realtime

## Documentation
The documentation is available on [readthedocs](https://timeseriesplots.readthedocs.io/en/latest/).

## Quick Start

```
git clone --recursive https://github.com/jfennick/timeseriesplots.git
cd timeseriesplots
./install_conda.sh
conda create --name tsp
conda activate tsp
./conda_devtools.sh
pip install -e ".[all]"
```

The `timeseriesplots` command will watch a directory (recursively, default .) for files containing timeseries data and plot them in realtime.

```
timeseriesplots <watchdir> <pat1> <pat2> <...>
```

![Plots](plots.png)
