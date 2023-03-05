pip install google-auth-oauthlib
ls
cd david
ls
ls .
cd ..
ls
cd david
git pull  https://github.com/dvk31/gather.git main
ls
git init
git pull  https://github.com/dvk31/gather.git main
ls
minicube start
minikube start
kubectl apply -f deployment.yaml
kubectl apply -f ingress.yaml
kubectl get deployments
kubectl get services
kubectl get pods
kubectl get ingress
kubectl logs my-django-app-7c6d556f7f-tgcvw
sudo journalctl -u kubelet
kubectl describe pod my-django-app-7c6d556f7f-tgcvw
docker login
docker tag my-django-app:latest your-dockerhub-username/my-django-app:latest
docker push your-dockerhub-username/my-django-app:latest
docker push davidable29/django:gatherv1
docker tag my-django-app:latest davidable29/my-django-app:latest
docker push davidable29/my-django-app:latest
kubectl set image deployment/my-django-app my-django-app=davidable29/my-django-app:latest
minikube service my-django-app
kubectl get pods
nslookup -type=CNAME dev.gather.day
kubectl get svc
kubectl create namespace myapp
kubectl get services -n your-namespace
kubectl get services -n myapp
kubectl get services -n dev.gather.day
kubectl config get-contexts
kubectl config view --minify | grep namespace
kubectl get services -n default
cat <<EOF > lb-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: my-loadbalancer-service
spec:
  type: LoadBalancer
  selector:
    app: my-app
  ports:
  - name: http
    port: 80
    targetPort: 8000
EOF

ls
kubectl apply -f my-loadbalancer-service.yaml
kubectl apply -f lb-service.yaml
kubectl get services -n default
kubectl get pods
pip install twilio
kubectl exec my-django-app-5ff98699ff-25pmt -- python manage.py runserver 0.0.0.0:8000
echo "twilio==<version>" >> requirements.txt
docker build -t my-django-app .
echo "twilio" >> requirements.txt
docker build -t my-django-app .
pip freeze > requirements.txt
docker build -t my-django-app .
kubectl exec my-django-app-5ff98699ff-25pmt -- python manage.py runserver 0.0.0.0:8000
pip show twilio
kubectl apply -f deployment.yaml
kubectl exec my-django-app-5ff98699ff-25pmt -- python manage.py runserver 0.0.0.0:8000
docker build -t my-django-app .
kubectl apply -f deployment.yaml
kubectl exec my-django-app-5ff98699ff-25pmt -- python manage.py runserver 0.0.0.0:8000
pip uninstall twilio
kubectl describe
kubectl get all --all-namespaces
kubectl logs my-django-app-7c6d556f7f-kwn8p
kubectl describe pod my-django-app-7c6d556f7f-kwn8p
docker images
docker container ls -a
eval $(minikube docker-env)
docker container stop minikube 
docker build -t my-django-app:latest
docker build -t my-django-app:latest .
docker tag my-django-app:latest davidable29/my-django-app:latest
docker push davidable29/my-django-app:latest
kubectl create deployment my-django-app --image=davidable29/my-django-app:latest
kubectl set image deployment/my-django-app my-django-app=davidable29/my-django-app:latest
kubectl expose deployment my-django-app --port=8000 --target-port=8000 --type=LoadBalancer
kubectl get services
kubectl get svc my-django-app
kubectl exec my-django-app-5ff98699ff-25pmt -- python manage.py runserver 0.0.0.0:8000
curl http://localhost:8000
kubectl port-forward service/my-django-app 8000:8000
python manage.py runserver 0.0.0.0:8000
kubectl exec -it <pod-name> -- /bin/bash
kubectl exec -it my-django-app-7c6d556f7f-kwn8p -- /bin/bash
ubectl get pods
kubectl get pods
kubectl exec my-django-app-5ff98699ff-25pmt -- python manage.py runserver 0.0.0.0:8000
kubectl get service my-django-app
kubectl get pods
kubectl apply -f lb-service.yml
ls
kubectl apply -f lb-service.yml
tree
sudo apt-get update
sudo apt-get install tree
tree
kubectl apply -f lb-service.yml
ls
kubectl apply -f lb1-service.yml
kubectl edit service my-django-app
kubectl get service my-django-app
kubectl edit service my-django-app
kubectl get services
kubectl get services -w
gcloud compute instances describe my-instance --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
gcloud config set project 795938229814
gcloud compute instances list
gcloud compute instances describe my-instance --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
gcloud config set project kinetic-raceway-379203
gcloud compute instances list
gcloud services enable compute.googleapis.com
gcloud compute instances list
gcloud compute instances create example-instance --machine-type=n1-standard-1 --zone=us-central1-a
gcloud compute instances list
kubectl get services -n dev.gather.day
eval $(minikube docker-env)gcloud compute instances list
gcloud compute instances list
ls
python manage.py runserver 0.0.0.0:8000
tree
docker build -t gatherv1
docker build -t gatherv1 .
kubectl apply -f deployment.yaml
kubectl apply -f lb1-service.yaml
kubectl apply -f ingress.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
ls
kubectl apply -f deployment.yaml
kubectl apply -f ingress.yaml
kubectl apply -f service.yaml
kubectl apply -f kb2.service.yaml
kubectl apply -f service.yaml
kubectl get service my-loadbalancer-service
docker run -p 8000:8000 my-django-app
docker build -t my-django-app .
curl http://localhost:8000/ 
kubectl exec -it my-django-app-5ff98699ff-25pmt -- /bin/bash
kubectl apply -ingress.yaml
kubectl apply -f ingress.yaml
docker run -p 8000:8000 my-django-app
docker run -p 35.223.245.242:8000:8000 my-django-app
docker build -t my-django-app .
docker run -p 35.223.245.242:8000:8000 my-django-app
kubectl get services
kubectl get nodes -o yaml | grep cloud.google.com/gke-nodepool
kubectl get nodes --show-labels | grep cloud.google.com/gke-nodepool
kubectl get nodes --show-labels
docker run -p 8000:8000 my-django-app
kubectl get services
gcloud compute project-info describe --project kinetic-raceway-379203  --flatten quotas --format="table(quotas.metric,quotas.limit,quotas.usage)"
gcloud container clusters list
gcloud container clusters list --project  kinetic-raceway-379203 
nano create-gke-cluster.sh
chmod +x create-gke-cluster.sh
./create-gke-cluster.sh
gcloud projects get-iam-policy  kinetic-raceway-379203 
tree
gcloud auth activate-service-account --key-file=kinetic-raceway-379203-a6718108ec8f.json
gcloud config set project  kinetic-raceway-379203 
gcloud projects describe kinetic-raceway-379203
create-gke-cluster.sh
./create-gke-cluster.sh
gcloud projects get-iam-policy kinetic-raceway-379203
gcloud projects add-iam-policy-binding kinetic-raceway-379203 --member=user:david@givesurance.org --role=roles/container.clusters.create
gcloud projects add-iam-policy-binding kinetic-raceway-379203 --member=USER_OR_SERVICE_ACCOUNT --role=roles/container.developer
gcloud projects add-iam-policy-binding kinetic-raceway-379203 --member=serviceAccount:david@givesurance.org@my-project.iam.gserviceaccount.com --role=roles/container.developer
gcloud projects add-iam-policy-binding kinetic-raceway-379203 --member=serviceAccount:david@givesurance.org --role=roles/container.developer
gcloud projects add-iam-policy-binding kinetic-raceway-379203 --member=user:david@givesurance.org --role=roles/container.developer
./create-gke-cluster.sh
gcloud projects get-iam-policy kinetic-raceway-379203
gcloud config get-value project
./create-gke-cluster.sh
david@cloudshell:~ (kinetic-raceway-379203)$ ./create-gke-cluster.sh                                                                                                                                                     
Default change: VPC-native is the default mode during cluster creation for versions greater than 1.21.0-gke.1500. To create advanced routes based clusters, please pass the `--no-enable-ip-alias` flag
Default change: During creation of nodepools or autoscaling configuration changes for cluster versions greater than 1.24.1-gke.800 a default location policy is applied. For Spot and PVM it defaults to ANY, and for all other VM kinds a BALANCED policy is used. To change the default values use the `--location-policy` flag.
Note: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008 node(s).
Creating cluster my-cluster in us-central1-a... Cluster is being health-checked (master is healthy)...done.     
Created [https://container.googleapis.com/v1/projects/kinetic-raceway-379203/zones/us-central1-a/clusters/my-cluster].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/my-cluster?project=kinetic-raceway-379203
kubeconfig entry generated for my-cluster.
NAME: my-cluster
LOCATION: us-central1-a
MASTER_VERSION: 1.24.9-gke.3200
MASTER_IP: 34.136.242.171
MACHINE_TYPE: e2-medium
NODE_VERSION: 1.24.9-gke.3200
NUM_NODES: 1
STATUS: RUNNING
david@cloudshell:~ (kinetic-raceway-379203)david@cloudshell:~ (kinetic-raceway-379203)$ ./create-gke-cluster.sh                                                                                                                                                     
Default change: VPC-native is the default mode during cluster creation for versions greater than 1.21.0-gke.1500. To create advanced routes based clusters, please pass the `--no-enable-ip-alias` flag
Default change: During creation of nodepools or autoscaling configuration changes for cluster versions greater than 1.24.1-gke.800 a default location policy is applied. For Spot and PVM it defaults to ANY, and for all other VM kinds a BALANCED policy is used. To change the default values use the `--location-policy` flag.
Note: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008 node(s).
Creating cluster my-cluster in us-central1-a... Cluster is being health-checked (master is healthy)...done.     
Created [https://container.googleapis.com/v1/projects/kinetic-raceway-379203/zones/us-central1-a/clusters/my-cluster].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/my-cluster?project=kinetic-raceway-379203
kubeconfig entry generated for my-cluster.
NAME: my-cluster
LOCATION: us-central1-a
MASTER_VERSION: 1.24.9-gke.3200
MASTER_IP: 34.136.242.171
MACHINE_TYPE: e2-medium
NODE_VERSION: 1.24.9-gke.3200
NUM_NODES: 1
STATUS: RUNNING
david@cloudshell:~ (kinetic-raceway-3792
kubectl get nodes
gcloud container clusters get-credentials my-cluster --zone us-central1-a --project kinetic-raceway-379203
kubectl apply -f deployment.yml
kubectl apply -f deployment.yaml
kubectl apply -f b2-service.yaml
kubectl apply -f ingress.yaml
kubectl apply -f lb2-service.yaml
kubectl get deployments
kubectl describe deployment my-django-app
kubectl get pods
kubectl describe pod my-django-app-547fbfd848-c6p2m
ocker login
docker login
docker images
docker tag my-django-app:latest docker.io/davidable29/my-django-app:latest
docker push docker.io/davidable29/my-django-app:latest
kubectl apply -f deployment.yaml
kubectl get deployments
kubectl get pods
kubectl get deployments
kubectl get pods
kubectl logs kinetic-raceway-379203
kubectl logs my-django-app-6f575d444f-wbk55
kubectl get services
ls
python -m venv 
usage: venv [-h] [--system-site-packages] [--symlinks | --copies] [--clear] [--upgrade] [--without-pip] [--prompt PROMPT] [--upgrade-deps] ENV_DIR [ENV_DIR ...]
venv: error: the following arguments are required: ENV_DIR
david@cloudshell:~/cookie$ 
python3 -m venv myenv
source myenvR/bin/activate
source myenv/bin/activate
ls
cookiecutter gh:cookiecutter/cookiecutter-django
pip install cookiecutter
cookiecutter gh:cookiecutter/cookiecutter-django
createdb --username=postgres main project
ls
cd mainproject
createdb --username=postgres main project
pg_isready
sudo apt-get install postgresql
sudo service postgresql start
createdb --username=postgres main project
gcloud container clusters list
tree
yum install tree
tree
git init
