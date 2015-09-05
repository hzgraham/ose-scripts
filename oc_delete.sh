#!/bin/bash

oc login
for each in "templates" "bc" "builds" "routes" "pods" "dc" "se" "is";
	    do
		for line in `oc get $each | awk '{ print $1 }' | grep -v "NAME"`;
		do
		    oc delete $each $line;
		done;
done

