![](images/ikmb_bfx_logo.png)

# IKMB Amplicon processing

This repository provides the necessary resources for building a containerized version of the IKMB amplicon preprocessing pipeline, developed by @mruehlemann. 

The container is available both through Dockerhub and Singularity hub.

## Running from online nodes (node has web access):

```
singularity exec shub://marchoeppner/ikmb_amplicon_preprocessing:1.0 dada2_16S_workflow.R <read folder> <output folder>
```

```
singularity exec docker://ikmb/ikmb_amplicon_preprocessing:1.0 dada2_16S_workflow.R <read folder> <output folder>
```

## Running from offline nodes (node has no web access):

1: Download the container
```
singularity pull shub://marchoeppner/ikmb_amplicon_preprocessing:1.0
```

2: Run using the local copy of the container

```
singularity exec /path/to/ikmb_amplicon_preprocessing-1.0.simg dada2_16S_workflow.R <read folder> <output folder>
```




