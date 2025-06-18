#!/bin/bash
# AIU configuration needs to be done at runtime, after the pod is deployed:
source /etc/profile.d/ibm-aiu-setup.sh

# Run vllm serve with the model argument
# NB: `exec` is used here to replace the parent process so that signals are
# handled correctly
exec vllm serve "$@"