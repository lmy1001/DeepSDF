#!/bin/bash
#SBATCH --output=qsub_output/%j.out
#SBATCH --gres=gpu:1
#SBATCH --mem=30G

#/itet-stor/menliu/net_scratch/conda_envs/DeepSDF/bin/python -u train_deep_sdf.py -e examples/sofas/with_direct_one_decoder

/itet-stor/menliu/net_scratch/conda_envs/DeepSDF/bin/python -u reconstruct.py -e examples/sofas/with_direct_one_decoder -c latest --split data/test_sofas.json -d data_with_direct --skip --debug


