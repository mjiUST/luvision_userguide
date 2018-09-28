#!/bin/bash

#block(name=anyName_cpuJob, threads=1, memory=5000, subtasks=1, gpu=false, hours=1)
    # write any linux command
    sleep 5
    python -c "print('hello world from python')"
    echo "this block ONLY starts after all subtasks of the previous block: anyName_parallelJobs."
#block(name=anyName_gpuJob, threads=1, memory=10000, subtasks=1, gpu=true, hours=24)
    # write any linux command
    # can check the status and available resources using commands: `qstat`, `qinfo`.
    sleep 5
    echo "this block ONLY starts after the previous block finishes. Remember to set gpu=true."

