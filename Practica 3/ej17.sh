#!/bin/bash 
ls |tr -d "aA" | tr "b-z" 'B-Z'
