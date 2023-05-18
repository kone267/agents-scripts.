#!/bin/bash
  
  ## system inventory
  
  echo " checking the kernel version... "
  sleep 2
  uname -r 
  echo " checking the memory... "
  sleep 2
  free -m
  echo " checking the hard drive ... "
  sleep 2
  lsblk
  echo " checking the os type and version ... "
  sleep 2
  cat /etc/*release
  echo " checking the number of processor ... "
  sleep 2
  nproc
  echo "inventory done successfully have a nice day!"
  sleep 2
  
