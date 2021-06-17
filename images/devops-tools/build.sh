
#!/bin/bash

# {{{ kubectl installation 

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
	sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | \
	sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
# }}}

# }}} terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://apt.releases.hashicorp.com focal main" | \
	sudo tee /etc/apt/sources.list.d/vault.list
sudo apt-get update
sudo apt-get install -y --no-install-recommends terraform
# }}} 


