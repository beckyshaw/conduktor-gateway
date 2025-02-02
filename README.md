# **Conduktor Gateway Deployment** 🚀

This repository automates the deployment of **Conduktor Gateway** on AWS EC2 instances using **Terraform**. It leverages **GitHub Actions** for CI/CD and supports multiple environments (`dev`, `staging`, and `prod`).

---

## **Table of Contents**

- [Features](#features)
- [Getting Started](#getting-started)
- [Repository Structure](#repository-structure)
- [Environments](#environments)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [GitHub Actions Workflow](#github-actions-workflow)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## **Features** 🌟

- 🚀 Automates Conduktor Gateway deployment to AWS EC2.
- 🌍 Environment-specific configurations (`dev`, `staging`, `prod`).
- 🔒 Securely stores secrets via **GitHub Secrets**.
- 🤖 Integrates with **GitHub Actions** for continuous deployment.
- ⚙️ Easily customizable Terraform modules.

---

## **Getting Started** 🛠️

Follow these steps to deploy Conduktor Gateway to your AWS infrastructure.

---

## **Repository Structure** 📂
```
conduktor-gateway-terraform/ 
├── modules/ 
│ └── ec2/ # Reusable Terraform module for EC2 
│ ├── main.tf 
│ ├── variables.tf 
│ ├── outputs.tf 
├── environments/ 
│ ├── dev/ # Environment-specific configurations (dev) 
│ │ ├── main.tf 
│ │ ├── variables.tf 
│ │ └── backend.tf 
│ ├── staging/ # Environment-specific configurations (staging) 
│ │ ├── main.tf 
│ │ ├── variables.tf 
│ │ └── backend.tf 
│ └── prod/ # Environment-specific configurations (prod) 
│ ├── main.tf 
│ ├── variables.tf 
│ └── backend.tf 
├── .github/ 
│ └── workflows/ 
│ └── terraform.yml # GitHub Actions CI/CD workflow 
├── .gitignore 
├── README.md # Project documentation 
└── variables.tf # Global variables
```

---

## **Environments** 🌍

This project supports three environments, each with its own configuration:

1. **Development (`dev`)**:
   - Used for testing and iteration.
   - Small EC2 instance types (e.g., `t3.micro`).
   
2. **Staging (`staging`)**:
   - Pre-production environment for QA and validation.
   - Medium EC2 instance types (e.g., `t3.medium`).

3. **Production (`prod`)**:
   - Production-ready deployment.
   - Large EC2 instance types (e.g., `t3.large`).

Each environment has its own Terraform configuration under the `environments/` directory.

---

## **Prerequisites** ✅

Ensure you have the following installed:

- [Terraform](https://www.terraform.io/) (v1.5.0 or higher)
- [AWS CLI](https://aws.amazon.com/cli/) (configured with access keys)
- An S3 bucket and DynamoDB table for Terraform state management
- GitHub account with repository access

---

## **Installation** ⚙️

1. Clone the repository:
   ```
   git clone https://github.com/your-username/conduktor-gateway-terraform.git
   cd conduktor-gateway-terraform
   ```

2. Navigate to the desired environment (e.g., dev):
   ```
   cd environments/dev
   ```

3. Initialize Terraform
   ```
   terraform init
   ```

## Usage 📖
1. Plan the changes:
Before applying any changes, run the plan command to review what Terraform will do.  

2. Apply the changes:
Apply the planned changes to deploy Conduktor Gateway. Use the -auto-approve flag to skip confirmation prompts.
   ```
   terraform apply -auto-approve
   ```
   

3. Access your deployment:
Once applied, Terraform will output information such as the EC2 instance IP address. Use this to verify the Conduktor Gateway is running.

## GitHub Actions Workflow 🤖
This repository uses a GitHub Actions workflow to automate deployments across environments.
Steps to Trigger a Deployment:
```
    Navigate to the Actions tab of your GitHub repository.
    Select the Deploy Conduktor Gateway workflow.
    Click the "Run workflow" button.
    Choose the target environment (dev, staging, or prod) from the dropdown menu.
    Click Run workflow to start the deployment process.
```
GitHub Actions will handle the execution of Terraform commands to deploy or update resources in the selected environment.

## Contributing 🤝

We welcome contributions to improve this project! Follow these steps:

    Fork the repository:
        Click the "Fork" button at the top of this repository.

    Clone your fork:
```
git clone https://github.com/your-username/conduktor-gateway-terraform.git
cd conduktor-gateway-terraform
```
Create a new branch:
```
git checkout -b feature-branch-name
```
Make your changes:

    Update Terraform configurations, modules, or documentation.

Commit and push your changes:
```
git commit -m "Describe your changes"
git push origin feature-branch-name
```
Submit a pull request:

    Go to the original repository and click "New pull request".

## License 📜

This project is licensed under the MIT License. Feel free to use and adapt it for your needs.
Contact 📬

For questions or feedback, reach out to:
```
    Name: Becky Shaw
    Email: testrooshaw@gmail.com
    GitHub: beckyshaw
```
