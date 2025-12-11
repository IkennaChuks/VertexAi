# Step-1
docker build --platform linux/amd64 -t demo-flask-app .

# Push to Container Registry 
docker tag demo-flask-app gcr.io/dataeng-394602/demo-flask-app
docker push gcr.io/dataeng-394602/demo-flask-app
 
gcloud run deploy demo-flask-app --image gcr.io/dataeng-394602/demo-flask-app --region us-central1


# Push to Artifact Registry 
docker tag demo-flask-app us-central1-docker.pkg.dev/dataeng-394602/vertexai/demo-flask-app
docker push us-central1-docker.pkg.dev/dataeng-394602/vertexai/demo-flask-app

gcloud run deploy demo-flask-app2 \
--image us-central1-docker.pkg.dev/dataeng-394602/vertexai/demo-flask-app \
--region us-central1