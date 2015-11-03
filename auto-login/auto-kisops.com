#!/bin/bash

DIR=`dirname $0`
code=`$DIR/ga-cmd <SET_YOUR_SECRET_KEY>`
$DIR/ssh.exp op.kisops.com $code

