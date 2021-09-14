#!/bin/bash
sudo apt-get update
sudo apt-get upgrade 
sudo apt-get -y install curl
sudo apt-get install -y python3-pip
sudo echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y
sudo touch /usr/local/pubsubjob.sh

sudo cat << 'EOF' > /usr/local/pubsubjob.sh
#!/bin/bash
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
new_fileName=$pubsub.$current_time.json
sudo gcloud pubsub subscriptions pull demo-subscription --auto-ack --format='json' >> $new_fileName
sudo gsutil cp /usr/local/$new_fileName gs://epam-demo-bucket/$new_fileName
EOF

sudo chmod +x /usr/local/pubsubjob.sh
sudo echo "*/6 * * * * /usr/local/pubsubjob.sh" | /usr/bin/crontab
