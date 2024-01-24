#!/bin/bash

# synchronize from BOX to local
echo "synchronizing: simple"
rclone sync MY_BOX:savio_workflow/simple/output simple/output
rclone sync MY_BOX:savio_workflow/simple/log    simple/log

echo "synchronizing: multiple"
rclone sync MY_BOX:savio_workflow/multiple/output multiple/output
rclone sync MY_BOX:savio_workflow/multiple/log    multiple/log
