#!/bin/bash

#tags=""

show_help() {
   echo "Usage: $0 [OPTIONS]"
   echo "Options:"
   echo "  -h, --help     Show this help message"
   echo "  -t, --tags TAGS  Specify tags"
   exit 0
}

while [[ $# -gt 0 ]]; do
   case "$1" in
   -h | --help)
      show_help
      ;;
   -t | --tags)
      if [ -n "$2" ]; then
         tags="$2"
         shift
      else
         echo "Error: Tags not provided for -t or --tags option"
         exit 1
      fi
      ;;
   -t=* | --tags=*)
      tags="${1#*=}"
      ;;
   *)
      echo "Error: Unknown option '$1'"
      exit 1
      ;;
   esac
   shift
done

# Your script logic here
if [ -n "$tags" ]; then
   echo "Tags specified: $tags"
fi

VM_STATUS=$(vagrant status --machine-readable | awk -F',' '/,state,/{print $NF}' | sort -u)
case "$VM_STATUS" in
"running")
   if [ -n "$tags" ]; then
      echo "Ansible will be executed with tags: $tags"
      ANSIBLE_ARGS="--tags $tags" vagrant provision
   else
      vagrant provision
   fi
   ;;
*)
   vagrant up
   ;;
esac
