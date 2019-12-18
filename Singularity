Bootstrap:docker
From:nfcore/base

%labels
    MAINTAINER Marc Hoeppner <m.hoeppner@ikmb.uni-kiel.de>
    DESCRIPTION Singularity image containing all requirements for the amplicon pipeline
    VERSION 1.0

%environment
    PATH=/opt/conda/envs/ikmb-amplicon-1.0/bin:/opt:$PATH
    export PATH

%files
    environment.yml /
    bin/dada2_16S_workflow.R /opt
    bin/dada2_16S_workflow_with_AR.R /opt
    bin/dada2_archaea_workflow.R /opt
    bin/dada2_fungi_workflow.R /opt
    bin/make_dada2_project.R /opt

    assets/rdp_species_assignment_16.fa.gz /opt 
    assets/RDP_v16-mod_March2018.RData /opt
    assets/sh_general_release_dynamic_10.10.2017_dev.fasta /opt
    assets/rdp_train_set_16.fa.gz /opt
    assets/sh_general_release_dynamic_02.02.2019.fasta /opt
    assets/silva_species_assignment_v132.fa.gz /opt
    assets/silva_nr_v132_train_set.fa.gz /opt
    assets/SILVA_SSU_r132_March2018.RData /opt

%post

    /opt/conda/bin/conda env create -f /environment.yml
    /opt/conda/bin/conda clean -a

    mkdir -p /ifs
    apt-get -y install procps

    cd /opt
    chmod +x *.R

    
