# Real-time plots

A common use case for real-time plots is when a running process is writing to a log file, and another running process is parsing it and producing simple tabular numerical data (i.e. two or more columns of numerical values separated by whitespace).

The first argument to the timeseriesplots command is the directory in which to (recursively) look for the files (default `.`). You can also optionally supply the file patterns, which by default are `*.xvg` and `*.dat`.

```
timeseriesplots <watchdir> <pat1> <pat2> <...>
```

After a few seconds, this should bring up a 3x4 grid of (initially blank) matplotlib plots. Then, as any tabular data files (matching the given glob patterns) are written to disk, the plots will populate and update.