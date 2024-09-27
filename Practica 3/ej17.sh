#!/bin/bash 
ls |tr -d "aA" | tr "b-zB-Z" 'B-Zb-z'
