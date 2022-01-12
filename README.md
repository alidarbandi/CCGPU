# Parallel processing with multi GPUs
Multi GPUs for parallel processing Compute Canada clusters 
This is the instruction to set up your working enviorment on Compute Canada clusters. 
1. Login to your preferred server with available GPUs: Best resoures are below
Server                         # nodes with GPU                # GPU
beluga.computecanada.ca       172                     4 x NVidia V100SXM2 (16G memory), connected via NVLink         
cedar.computecanada.ca        114                     4 x NVIDIA P100 Pascal (12G HBM2 memory)
                              32                      4 x NVIDIA P100 Pascal (16G HBM2 memory)
                              192                     4 x NVIDIA V100 Volta (32G HBM2 memory)
graham.computecanada.ca       160	                   	2 x NVIDIA P100 Pascal (12GB HBM2 memory)
                              7		                    8 x NVIDIA V100 Volta (16GB HBM2 memory).
                              2		                    8 x NVIDIA V100 Volta (32GB HBM2 memory),NVLINK
                              6	                      4 x NVIDIA T4 Turing (16GB GDDR6 memory)
                              30	                    4 x NVIDIA T4 Turing (16GB GDDR6 memory)  
                              
2. Check resource availablity with partition-stats
3. Browse to yuour directory and load the following
4. Module load python
5. Module load scipy-stack
6. To create a virtual enviorment : virtualenv --no-download ENV
7. To activate you enviornment:   source ENV/bin/activate
8. You can install any package necessary for your code:  pip install --no-index torch
9. modify the shell script to run your python code. Edit the number of GPUs, CPUs, memory and time
10. submit job withh: sbatch submit.sh
