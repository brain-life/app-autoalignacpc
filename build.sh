#!/bin/bash
module load matlab/2017a
cat > build.m <<END
addpath(genpath('/N/u/hayashis/BigRed2/git/vistasoft'))
addpath(genpath('/N/u/brlife/git/jsonlab'))
addpath(genpath('/N/soft/mason/SPM/spm8'))
mcc -m -R -nodisplay -d compiled autoalignmatlab
exit
END
matlab -nodisplay -nosplash -r build
