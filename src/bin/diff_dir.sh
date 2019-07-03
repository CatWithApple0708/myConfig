#!/bin/bash
tree $1 > /tmp/diffdir.log && tree $2 > /tmp/diffdir2.log && diff /tmp/diffdir.log /tmp/diffdir2.log
