GCP- Provision GKE Cluster Using Terraform Module
GKE provides a number of features that make it a good choice for deploying containerized applications, including:

Managed Kubernetes: GKE manages the control plane for your Kubernetes cluster, so you don’t have to. This frees you up to focus on developing and deploying your applications.
Autoscaling: GKE can automatically scale your Kubernetes cluster up or down based on demand. This helps you to optimize your costs and ensure that your applications are always running at the right capacity.
High availability: GKE automatically distributes your Kubernetes cluster across multiple zones, so your applications are always available even if one zone fails.
Security: GKE provides a number of security features, including role-based access control (RBAC), network policies, and encryption. This helps you to secure your Kubernetes cluster and protect your applications.
Prerequisite:
Before you can provision a GKE cluster using Terraform, you need to ensure that you have the following prerequisites in place:

Google Cloud Platform (GCP) Account: GCP account with the necessary permissions to create and manage resources.
Google Cloud SDK (gcloud) : which provides the command-line tools for interacting with GCP services.
Enable Google Kubernetes Engine (GKE) API: Enable the GKE API for your project. You can enable it either through the Google Cloud Console or by running the following command with the gcloud CLI.
gcloud services enable container.googleapis.com --project=PROJECT_ID
Authentication and Credentials: Configure authentication for Terraform to access your GCP account. You can use either Application Default Credentials (ADC) or a Service Account key file
Install Terraform and kubectl: Install Terraform https://terraform.io/downloads.html and kubectl https://kubernetes.io/docs/tasks/tools on your local machine.
Table of contents:
To provision a GKE cluster using Terraform, you can follow the steps below:

1: Set up a project on your Google Cloud account:

Create a new project on the Google Cloud Console or use an existing project where you want to provision the GKE cluster.

2: Enable required APIs:

Enable the Compute Engine API and Kubernetes Engine API for your project.

3: Create a Service Account:

Create a Service Account in your project with the necessary permissions to provision resources.Generate a JSON key for the Service Account.

4: Install and initialize the gcloud SDK:

Install the Google Cloud SDK on your local machine

5: Install kubectl:

Install the Kubernetes command-line tool, kubectl, on your local machine.

6: Install Terraform:

Install Terraform on your local machine

7: Create Terraform files:

Set up a directory for your Terraform files.

8: Provision the GKE cluster:

provision the GKE cluster based on your Terraform configuration.

9: Access cluster using kubectl:

Configure kubectl to connect to your GKE cluster.

10: Delete the cluster:

If you want to delete the GKE cluster,

1. Set up a project on your Google Cloud account:
To create a new project in Google Cloud using the Console. Open the Google Cloud Console in your web browser.
Navigate to the “Manage Resources” page and Create a new project. Enter project details and finally review and create the project.
2. Create a Service Account:
3. Select a role/s for the service account.
4. Create a private key for your project and download it in your local.
5. To run Terraform operations and create the GKE cluster on your GCP account, you need to install and configure the Google Cloud SDK (gcloud) tool.
6. Authenticate with your Google Cloud account using the command gcloud auth login.
7. Install kubectl, the Kubernetes command-line tool to interact.
8. To use Terraform you will need to install it.
9. Create a new folder gke-terraform-project with the files in this repo.
10. After you have saved your files, initialize the Terraform workspace.
11. "terraform init" downloads all the required providers and plugins.
12. "terraform plan"
13. "terraform apply -auto-approve"
14. Confirm the cluster creation in the GCP portal.
15. Configure Kubectl to connect to your GKE cluster by running:
16.     gcloud container clusters get-credentials CLUSTER_NAME --region REGION where CLUSTER_NAME is the name of your GKE cluster and REGION is the region where the cluster is located.
17. Verify the connection by running kubectl get nodes to display the nodes in your GKE cluster.
18. Delete the cluster: once we no longer need this infrastructure, we can clean up to reduce costs.
        terraform destroy -auto-approve

