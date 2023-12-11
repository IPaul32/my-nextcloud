# Project report

### Project's reporter: 
Ivanchuk Pavel

### Group number: 
m-sa2-25-23

### Description of application for deployment:
**Name of application:** Nextcloud
**Programming language is this application written in:** PHP
**Data Base:** MariaDB
**Git repository:** [->Click here <-](https://github.com/IPaul32/my-nextcloud "GitHub Ivanchuk Nextcloud")

### Pipeline. High Level Design
![nextcloud_scheme](https://github.com/IPaul32/sa2-25-23-Ivanchuk/assets/145698867/c44f4c45-954a-48c4-aeea-1052a4f8d729)

### Technologies which were used in project
**Orchestration:** Kubernetes
**Automation tools:** Github actions, Argo CD
**SCM:** GitHub
**Notification:** Slack
**Other tools:** Docker, Helm 

### CI description: 
GitHub actions workflow starting after pushing to the main branch.
**Bump version and push tag:**  Automatically bump and push tag.
**Docker Lint:**        Verifying Dockerfile. If it detects errors, it reports them and then the process ends.
**Build and push image:**       Build docker image in GitHub.
**Generate Chart:**     Build helm and update appVersion and version in the Chart.yaml and push changes to the master branch.
**Helm Lint:**  Verifying Helm Chart. This action will not start if the Generate Chart fails.If it detects errors, it reports them and then the process ends.
**Chart release:**      updates the Helm index of the repository, adds a new version of the chart, sets Git settings, commits the changes and sends them to the remote GitHub repository
**Slack Notification:** Send notification to the Slack.

### Deployment flows short description:
GitHub pages used as helm diagram artifactory
ArgoCD used for deploying aplication
We can check status in the ArgoCD web UI

### Rollback flow description and implementation:
Rollback from ArgoCD web interface.

### Links
**Docker official git** [->Click here <-](https://github.com/nextcloud/docker "GitHub Nextcloud docker")