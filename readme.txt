Portfolio Website - DevOps Pipeline

Overview

This repository contains my personal portfolio website, now fully automated with a complete CI/CD pipeline using Jenkins, Docker, Ansible, and GitHub Webhooks. This setup ensures that any code changes pushed to GitHub trigger an automatic build, deployment, and hosting of the latest version of the website.

Technologies Used

CI/CD Pipeline

GitHub – Version control & repository hosting.

Jenkins – Automates builds, tests, and deployments.

GitHub Webhooks – Triggers Jenkins pipelines automatically on code changes.

Docker – Containerized deployment of the website.

Ansible – Automates infrastructure and container management.

Infrastructure

ngrok – Exposes Jenkins running on a local machine to GitHub Webhooks.

Cloud Hosting (Upcoming) – Planning to deploy on AWS/DigitalOcean.

Pipeline Workflow

Code Commit & Push: Developer pushes changes to the GitHub repository.

GitHub Webhook Trigger: Sends an HTTP request to Jenkins.

Jenkins Pipeline Execution:

Pulls latest code from GitHub.

Builds a new Docker image.

Stops and removes any existing container.

Runs the updated container.

Deploys using Ansible for configuration management.

Live Website Update: The latest version is automatically served.

Setup Instructions

1. Clone the Repository

git clone git@github.com:your-username/portfolio-website.git
cd portfolio-website

2. Setup Jenkins & Webhook

Install Jenkins on your server/machine.

Install necessary plugins (Pipeline, Git, Docker, Ansible).

Create a Jenkins pipeline with the provided Jenkinsfile.

Use ngrok to expose Jenkins (ngrok http 8090).

Add the ngrok URL as a webhook in GitHub (https://your-ngrok-url/github-webhook/).

3. Run the CI/CD Pipeline

Push a code change to GitHub.

Watch Jenkins build, deploy, and update the website automatically.

Access the running website on http://localhost:8080 (or your custom port).