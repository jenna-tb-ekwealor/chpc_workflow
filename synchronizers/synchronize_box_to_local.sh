#!/bin/bash

# synchronize from BOX to local
echo "synchronizing: simple"
rclone sync Box_USU:chpc_workflow/simple/output simple/output
rclone sync Box_USU:chpc_workflow/simple/log    simple/log

echo "synchronizing: multiple"
rclone sync Box_USU:chpc_workflow/multiple/output multiple/output
rclone sync Box_USU:chpc_workflow/multiple/log    multiple/log
