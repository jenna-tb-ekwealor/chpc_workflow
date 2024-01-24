#!/bin/bash

# synchronize from BOX to local
echo "synchronizing: data"
rclone sync Box_USU:chpc_workflow/data data
