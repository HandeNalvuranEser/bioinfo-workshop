conda config --show channels
conda create -y -n deneme seqkit
conda activate deneme
which seqkit
seqkit version
conda deactivate

#Tool Inspect, extend, export
conda list -n variants-ready | grep -E "^(# Name|bcftools|samtools|bwa|htslib) "

#Downloading a tool or package into an env, not activated yet
conda install -y -n deneme seqtk

conda activate deneme
which seqtk
conda deactivate

#Check the deneme env's history
conda env export -n deneme --from-history > envs/deneme.yml
cat envs/deneme.yml

#Removing an environment
conda env remove -y -n deneme
conda env list

#Print the env details
cat envs/rnaseq.yml

#Setup the env
conda env create -f envs/rnaseq.yml
#conda env create -f envs/rnaseq.yml -n rnaseq
#conda create --name rnaseq --file envs/rnaseq.yml --env-spec environment.yml



