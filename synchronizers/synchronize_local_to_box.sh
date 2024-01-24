#!/bin/bash

# synchronize from local to BOX
echo "synchronizing: data"
rclone sync data/ Box_USU:chpc_workflow/data
