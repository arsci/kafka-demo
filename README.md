# RFP Demo

## Prerequisites

- Docker with Kubernetes
- jq (for parsing kubectl responses)
- git (for getting Confluent helm charts)

## Installation

### Prep

1. Get your local Kube up and running

### Kube dashboard

1. `make dashboard.install`
2. `make kube.proxy`
3. Open new terminal tab
4. `make dashboard.token`
5. `make dashboard.open`
6. Use the token from previous step for authentication


### Jenkins

1. `make jenkins.install`
2. Wait a few minutes for Jenkins to come up
3. `make jenkins.open`
4. `make jenkins.password`
5. Log in with user admin and password from the output above

### Confluent platform

1. `make confluent.install`
2. Wait a few minutes for it to come up
3. `make confluent.proxy`
4. Open new terminal tab
5. `make confluent.open`

### Python Twitter Publisher

1. `make kube.proxy` if you don't have it running yet
2. `make publisher.install`
3. `make publisher.start`


### Console consumer for Twitter feed

1. `make consumer.twitter`