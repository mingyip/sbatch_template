source activate RL

for entry in runs/*; do
    #echo "$entry"

    for run in "$entry"/*; do
        echo "$run"

        cd $run
        sbatch sbatch_job.sh
        cd -
        
    done
done


