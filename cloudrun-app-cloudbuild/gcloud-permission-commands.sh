# Assign Service account user role to the service account 
gcloud projects add-iam-policy-binding dataeng-394602 \
--member=serviceAccount:610990664696@cloudbuild.gserviceaccount.com --role=roles/iam.serviceAccountUser


# Assign Cloud Run role to the service account 
gcloud projects add-iam-policy-binding dataeng-394602 \
  --member=serviceAccount:610990664696@cloudbuild.gserviceaccount.com --role=roles/run.admin
