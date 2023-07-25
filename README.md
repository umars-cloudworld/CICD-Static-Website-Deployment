## Contributors
- Muhammad Umar (Host)
# Project Title
## Project-2 - CI/CD Deployment of Static Website on Amazon S3 using CodeCommit and CodePipeline
#  Author: Muhammad Umar                                        
#  Email : umar@techwithomar.com                          


This project showcases how to set up a Continuous Integration and Continuous Deployment (CICD) pipeline for deploying a static website on Amazon S3 using CodeCommit and CodePipeline. By following the steps outlined in this repository, you can automate the process of updating and deploying your static website to an S3 bucket with ease.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Prerequisites

Before getting started, ensure you have the following prerequisites:

- AWS account with permissions to create CodeCommit repositories and CodePipeline pipelines.
- A static website (HTML, CSS, JS, etc.) that you want to deploy.

## Installation

Follow these steps to set up the CICD pipeline for your static website:

1. Fork this repository and clone it to your local machine.
2. Upload your static website files to the CodeCommit repository.
3. Create an S3 bucket to host your static website.
4. Create a CodePipeline in AWS, specifying CodeCommit as the source and S3 for the deploy stage.


### Makefile Commands

To simplify the deployment process, you can use the following Makefile commands located in the root directory of this project:

- `make init-dev`: Initialize Terraform Configurations of dev Environment
- `make fmt-dev`: Formate Terraform Configurations of dev Environment
- `make validate-dev`: Validate Terraform Configurations of dev Environment
- `make plan-dev`: Plan Terraform Configurations of dev Environment
- `make apply-dev`: Apply Terraform Configurations of dev Environment
- `make destroy-dev`: Destroy Terraform Configurations of dev Environment

These commands will handle the initialization, validation, planning, applying, and destroying of your Terraform infrastructure for the dev environment.


## Usage

Once the deployment pipeline is set up, any changes pushed to the CodeCommit repository will trigger the pipeline to automatically build and deploy the updated React app to the specified S3 bucket.

## Contributing

Contributions are welcome! If you find any issues or have improvements to suggest, feel free to open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

For any inquiries or questions, please contact me at [umar@techwithomar.com](mailto:umar@techwithomar.com) or visit my website [https://techwithomar.com/](https://techwithomar.com/).
