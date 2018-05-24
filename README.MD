# Usage

```bash
# load modules
source scripts/loadmodules.sh

# create folder for executables
mkdir build

# create executable for -O2 (change Makefile)
make
mv heat build/heat_2

# create executable for -O3 (change Makefile)
make
mv heat build/heat_3

# run job
sbatch scripts/job.cmd
```

Finally you can view the results in build/job.out.