#!/bin/bash

mv detected_frames/* to_upload/
aws s3 cp to_upload/ s3://forklift-unlabeled/  --recursive
mv to_upload/* uploaded_frames/