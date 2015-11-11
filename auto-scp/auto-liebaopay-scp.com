#!/bin/bash

DIR=`dirname $0`
file=$1
code=`$DIR/ga-cmd <SET_YOUR_SECRET_KEY>`
$DIR/scp.exp op.liebaopay.com $code $file

