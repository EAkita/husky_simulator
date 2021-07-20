#!/bin/bash

# Script to export correct environmental variables for the vaultbot sim

export DUAL_ARM_BULKHEAD=true
export HUSKY_TOP_PLATE_ENABLED=false
export DUAL_UR5_ENABLED=true
export HUSKY_DUAL_UR5_ENABLED=true
export ROBOTIQ_GRIPPERS_ENABLED=true
export HUSKY_USER_RAILS=false
export FLIR_PTU_ENABLED=true

echo "Environment variables set! Launch the vaultbot sim."