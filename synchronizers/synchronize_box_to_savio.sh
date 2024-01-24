#!/bin/bash

# synchronize from BOX to local
echo "synchronizing: data"
rclone sync MY_BOX:savio_workflow/data data
