#!/bin/bash

# synchronize from savio to BOX
echo "synchronizing: simple"
rclone sync /global/scratch/users/mrmay/savio_workflow/simple/output MY_BOX:savio_workflow/simple/output 
rclone sync /global/scratch/users/mrmay/savio_workflow/simple/log    MY_BOX:savio_workflow/simple/log

echo "synchronizing: multiple"
rclone sync /global/scratch/users/mrmay/savio_workflow/multiple/output MY_BOX:savio_workflow/multiple/output 
rclone sync /global/scratch/users/mrmay/savio_workflow/multiple/log    MY_BOX:savio_workflow/multiple/log
