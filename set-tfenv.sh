#!/bin/bash

# set export AWS_PROFILE="current-profile-user"
# script will set current aws user from $AWS_PROFILE

export TF_VAR_user_profile="$AWS_PROFILE"