#!/bin/bash
#-----------------------------------------------------------------------------------------------------------------
#REMOVE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
rm ./*.tgz

#REMOVE INDEX.YAML
rm ./index.yaml

#-----------------------------------------------------------------------------------------------------------------
#CREATE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
helm package guestbook
helm package icp-openldap-devel

#HACK for DEMO LIBERTY
mv *.tgz  ../repo/stable/


#CREATE INDEX.YAML
cd ../repo/stable

helm repo index --url https://raw.githubusercontent.com/niklaushirt/guestbook/master/helm/repo/stable/ ./

cd ../../charts
