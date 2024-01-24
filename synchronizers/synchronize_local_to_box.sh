#!/bin/bash

# synchronize from local to BOX
echo "synchronizing: data"
rclone sync data/ MY_BOX:savio_workflow/data
