FROM nfcore/base
LABEL authors="Marc Hoeppner" \
      description="Docker image containing all requirements for IKMB amplicon pipeline"

COPY environment.yml /
COPY bin/dada2_16S_workflow.R /opt
COPY bin/dada2_16S_workflow_with_AR.R /opt
COPY bin/dada2_archaea_workflow.R /opt
COPY bin/dada2_fungi_workflow.R /opt
COPY bin/make_dada2_project.R /opt

COPY assets/rdp_species_assignment_16.fa.gz /opt
COPY assets/RDP_v16-mod_March2018.RData /opt
COPY assets/sh_general_release_dynamic_10.10.2017_dev.fasta /opt
COPY assets/rdp_train_set_16.fa.gz /opt
COPY assets/sh_general_release_dynamic_02.02.2019.fasta /opt
COPY assets/silva_species_assignment_v132.fa.gz /opt
COPY assets/silva_nr_v132_train_set.fa.gz /opt
COPY assets/SILVA_SSU_r132_March2018.RData /opt

RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/ikmb-amplicon-1.0/bin:/opt:$PATH

RUN cd /opt && chmod +x *.R
