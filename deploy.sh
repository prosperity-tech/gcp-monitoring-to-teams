#!/bin/sh

set +e

gcloud functions deploy gcp-monitoring-to-teams \
    --entry-point=F \
    --memory=128MB \
    --region=europe-west1 \
    --runtime=go116 \
    --env-vars-file=.env.yaml \
    --trigger-http \
    --timeout=10s
