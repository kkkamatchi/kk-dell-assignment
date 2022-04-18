# kk-dell-assignment
KKKamatchi Dell Assignment


Greetings,

This task has been produced for the pre-interview task for the job role of DevOps

Webdevelopment tool used JavaScript
	index.html (JavaScript)

	This will connect to the https://api.data.gov.sg/v1/environment/rainfall via API to fetch the Singapore's Rainfall information
	Parameters passed DateTime and Date 
	Upon fetching the information it will filter for the specific location and display the info on the HTML format
	
Docker (Container Service)
	dockerfile

	This will download the latest image of nginx from docker hub the index.html file is copied to the image 
	Port 80 and 8080 is exposed for accessing the site

	You can download this dockerfile and index.html to local machine and run the following command to build the image
		docker build . -t <image name>
		docker run -p 8080:80 <image name> --name <containter name>

	You can now access the site by http://127.0.0.1:80/index.html

	Upload the image to DockerHub
		docker image push <image name>

MiniKube (Kubernetes Desktop Edition)
	You will need a working instance of MiniKube
	download the following yaml files
		namespace.yaml
		deployment.yaml
		service.yaml	
		ingress.yaml
	
Deploying the image in MiniKube
	
	Create the NameSpace
		kubectl apply -f namespace.yaml
	Verify the creation of NameSpace
		kubectl get namespace
	Setting the default namespace
		kubectl config set-context --current --namespace=NAMESPACE
		
	Deploying the Deployment
		kubectl apply -f deployment.yaml
	
	Verify the Deployment
		kubectl get deployment
		kubectl describe deployment
		kubectl get all
	
	Deploying the Service	
		kubectl apply -f service.yaml
	Verify the configuration of service
		kubectl get service
		kubectl describe service

	Deploying the ingress
		kubectl apply -f ingress.yaml
	Verify the configuration of ingress
		kubectl get ingress
		kubectl describe ingress

	Note: Below is required only if you are using minikube
	NOTE: BELOW IS REQUIRED ONLY IF YOU ARE USING MINIKUBE
	To use ingress in minikube following is required (https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)
		Enable ingress in minikube
			minikube addons enable ingress
		Upon enabling you will need to run the tunnel and will have to keep the window open and running
			minikube tunnel
		Activate the Service 
			minikube service --url <service Name>
	
	To access localy the application 
		update the hosts file with the ingress Address and hostname
	
	The application is now ready to use http://rainfallinfo.com/index.html
