# TODO Items

This is a place to expound on possible work.  If you have something that has an actual Issue attached to it, 
make sure it gets linked to here

- [ ] Build Docker image from existing IOOS conda environment configuration
- [ ] Push Docker images to ECR
- [ ] Write terraform to manage basic remote state for Sagemaker deployments in the cloud sandbox AWS account
- [ ] Write terraform to deploy a Sagemaker domain for managing notebooks (and possibly other SM work)
- [ ] Write terraform to configure and deploy Sagemaker notebooks that allow users to work
- Produce a process for making these notebooks have access to existing data from the sandbox and elsewhere.
    - [ ] Make this process be deployable by means of tagging this repo.