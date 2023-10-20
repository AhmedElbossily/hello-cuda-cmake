#!/bin/tcsh

##Resource Request

#SBATCH --job-name=hello_cuda
#SBATCH --partition=p2GPU40
#SBATCH --ntasks=1

##SBATCH --gpus-per-task=1 # number of gpus per task
##SBATCH --constraint=v100 # select node with v100 GPU

#SBATCH --time=1:00:00
#SBATCH --mail-user=rupesh.chafle@hereon.de
#SBATCH --mail-type=END
#SBATCH --output=/gpfs/home/chafle/hello-cuda-cmake/C-out.txt
#SBATCH --error=/gpfs/home/chafle/hello-cuda-cmake/C-error.txt

cd /gpfs/home/chafle/hello-cuda-cmake/build/
./hello
