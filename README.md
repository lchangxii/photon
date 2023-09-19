
# Artifact Evaluation for our MICRO 2023 paper called "Photon"
### Reusability using MLCommons

We added support to evaluate Photon using the [MLCommons CM automation language](https://github.com/mlcommons/ck).

Make sure you have install CM. Follow this [guide](https://github.com/mlcommons/ck/blob/master/docs/installation.md) to install it.

Next install reusable MLCommons automations: 

```bash
cm pull repo mlcommons@ck
```

Pull this repository via CM:
```bash
cm pull repo lchangxii@photon
```

The CM scripts for Photon will be available under ```/CM/repos/lchangxii@photon/script/```

The raw results for Photon will be available under ```/CM/repos/lchangxii@photon/gpudata after the first and second steps```

The figures results for Photon will be available under ```/CM/repos/lchangxii@photon/figures after all steps```

```
script
|_install_dep  |_produce-plots  |_run-experiments
```

Perform the following steps to evaluate Photon with MLCommons:


1) This command will install system dependencies for Docker and require sudo (skip it if you have Docker installed):
```bash
cm run script micro-2023-79:install_dep 
```

2) This command will prepare and run all experiments via the container:

```bash

cm run script micro-2023-79:run-experiments 


```

3) In case of successful execution of the previous command, this command will generate the the plots of the paper:

```bash
cm run script micro-2023-79:produce-plots
```

Thanks to [Victima](https://github.com/CMU-SAFARI/Victima.git), as we used their scripts as a basis to build ML-Commons for Photon. 
