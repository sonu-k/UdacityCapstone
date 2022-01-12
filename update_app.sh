#Login to DockerHub
docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD

# Step 1:
# Build image and add a descriptive tag
docker build -t udacitycapstone .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d -p 8000:8080 udacitycapstone

# Step 4:
# Create dockerpath
export dockerpath=sonkumar0895/udacitycapstone

# Step 5:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag udacitycapstone:latest sonkumar0895/udacitycapstone:v2

# Step 6:
# Push image to a docker repository
docker push sonkumar0895/udacitycapstone:v2

# Step 7:
# connect to aws and establish credentials
aws eks --region us-east-1 update-kubeconfig --name udacitycapstone --profile Admin

# Step 8
# trigger rolling update
kubectl set image deployment/udacitycapstone capstone-html-container=sonkumar0895/udacitycapstone:v2

# Step 9
# describe deployment and services
kubectl get deployment udacitycapstone
kubectl get services udacitycapstone
