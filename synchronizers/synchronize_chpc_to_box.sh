#!/bin/bash

# synchronize from chpc to BOX
echo "synchronizing: simple"
rclone sync /scratch/general/nfs1/u6049165/chpc_workflow/simple/output Box_USU:chpc_workflow/simple/output 
rclone sync /scratch/general/nfs1/u6049165/chpc_workflow/simple/log    Box_USU:chpc_workflow/simple/log

echo "synchronizing: multiple"
rclone sync /scratch/general/nfs1/u6049165/chpc_workflow/multiple/output Box_USU:chpc_workflow/multiple/output 
rclone sync /scratch/general/nfs1/u6049165/chpc_workflow/multiple/log    Box_USU:chpc_workflow/multiple/log
