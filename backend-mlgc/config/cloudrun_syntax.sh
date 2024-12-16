gcloud builds submit --tag gcr.io/submissionmlgc-hilmicuy

gcloud run deploy backend-mlgc \
--image gcr.io/submissionmlgc-hilmicuy/backend-mlgc \
--set-env-vars APP_ENV=production,APP_PORT=8080,APP_HOST=0.0.0.0,MODEL_URL=https://storage.googleapis.com/cancer-prediction-storage1/model.json \
--platform managed \
--region asia-southeast2 \
--allow-unauthenticated
