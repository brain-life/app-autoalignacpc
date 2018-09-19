[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)

> This App was deprecated by https://github.com/brain-life/app-acpcART 

# app-autoalignacpc

This App will align brains to the AC-PC plane by guessing their location given MNI coordinates using [vistasoft](https://github.com/vistalab/vistasoft) from Stanford Vision Imaging Science and Technology Lab.

The algorithm will output t1.nii.gz containing voxel data that is aligned to AC-PC. The affine matrix will be reset to identity.

### Authors
- Lindsey Kitchell (kitchell@indiana.edu)
- Soichi Hayashi (hayashis@iu.edu)

### Project directors
- Franco Pestilli (franpest@indiana.edu)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)

## Running the App 

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
    "t1": "./input/anat/t1.nii.gz"
}
```

3. Launch the App by executing `main`

```bash
./main
```

### Sample Datasets

If you don't have your own input file, you can download sample datasets from Brainlife.io, or you can use [Brainlife CLI](https://github.com/brain-life/cli).

```
npm install -g brainlife
bl login
mkdir input
bl dataset download 5a050966eec2b300611abff2 && mv 5a050966eec2b300611abff2 input/anat

## Output

The `t1.nii.gz` will be generated in the current directory which contains AC-PC aligned version of the input `t1.nii.gz`. 

### Dependencies

This App only requires [singularity](https://www.sylabs.io/singularity/) to run. If you don't have singularity, you will need to install following dependencies.  

  - Matlab: https://www.mathworks.com/products/matlab.html
  - jsonlab: https://www.mathworks.com/matlabcentral/fileexchange/33381-jsonlab-a-toolbox-to-encode-decode-json-files
  - VISTASOFT: https://github.com/vistalab/vistasoft/

