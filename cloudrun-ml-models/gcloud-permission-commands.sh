# Assign Service account user role to the service account 
gcloud projects add-iam-policy-binding dataeng-394602 \
--member=serviceAccount:610990664696@cloudbuild.gserviceaccount.com --role=roles/storage.admin


# Assign Cloud Run role to the service account 
gcloud projects add-iam-policy-binding dataeng-394602 \
  --member=serviceAccount:610990664696@cloudbuild.gserviceaccount.com --role=roles/run.admin

# Command to run the build using cloudbuild.yaml
gcloud builds submit --region us-central1


