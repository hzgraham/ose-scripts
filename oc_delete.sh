#!/bin/bash

oc login
for each in "templates" "bc" "builds" "routes" "pods" "dc" "se" "is" "rc" "svc";
	    do
		for line in `oc get $each | awk '{ print $1 }' | grep -v "NAME" | grep -v "CONTROLLER"`;
		do
		    oc delete $each $line;
		done;
done

