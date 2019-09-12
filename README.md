# sbatch_template

This is a simple code created to generate and run multiple tasks on a slurm workload system.


## How to run it 

Steps:
1. Modify the ```generate.sh``` file and use it to create jobs
```
> ./generate.sh
```
2. Folders ```runs/```, ```finished/``` and as well as the corresponing multiple sub-job folders should be generated in the main folder. A copy of the source code and ```config.py``` file should also be copied into this folder after that.

3. Run the ```run.sh``` to submit the jobs into the slurm sever
```
> ./run.sh
```
4. Jobs are now submitted to the server and will get executed when the slurm workload system has resources to start the run.
5. use bash command ```squeue``` to check the job status.
```
> squeue
```
or 
```
> watch squeue -u <username>
```
6. After the jobs are finished, you should be able to find the result in the ```finished``` folder.


