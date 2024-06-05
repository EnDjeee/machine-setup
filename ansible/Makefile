# Makefile

# Virtual environment name
VENV_NAME := venv

.PHONY: all
all: venv install-requirements install-collections install-vagrant deploy

# Create and activate the virtual environment
.PHONY: venv
venv:
	python3 -m venv $(VENV_NAME)
	@echo "Virtual environment '$(VENV_NAME)' created."
	@echo "To activate the virtual environment, use the following command:"
	@echo ". $(VENV_NAME)/bin/activate"

# Install dependencies from requirements.txt
.PHONY: install-requirements
install-requirements: venv
	$(VENV_NAME)/bin/pip install --upgrade pip
	$(VENV_NAME)/bin/pip install -r requirements.txt
	@echo "Requirements installed."

# Install Ansible collection from requirements.yml
.PHONY: install-collections
install-collections: venv install-requirements
	$(VENV_NAME)/bin/ansible-galaxy collection install -r requirements.yml
	$(VENV_NAME)/bin/ansible-galaxy install -r requirements.yml
	@echo "Ansible collection installed."

# Install Vagrant
.PHONY: install-vagrant
install-vagrant:
	sudo rm -f /usr/share/keyrings/hashicorp-archive-keyring.gpg
	wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg;
	echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $$(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list;
	sudo apt update && sudo apt install vagrant && sudo apt-get build-dep vagrant ruby-libvirt && sudo apt install -y qemu libvirt-daemon-system ebtables libguestfs-tools \
  libxslt-dev libxml2-dev zlib1g-dev ruby-dev ;
	vagrant plugin install vagrant-libvirt;
	@echo "Vagrant and vagrant libvirt provider installed."


# Run ansible-playbook to deploy playbook.yml
.PHONY: deploy
deploy: 
	@echo "Are you sure you want to deploy the playbook? (y/n)"
	@read -p "> " confirm; \
	if [ "$$confirm" = "y" ]; then \
		$(VENV_NAME)/bin/ansible-playbook -i inventories/local/hosts.ini playbook.yml --vault-password-file .vault.pwd $(ARGS); \
		echo "Playbook deployed."; \
	else \
		echo "Deployment canceled."; \
	fi

# Test playbook in a vagrant machine
.PHONY: test-playbook
test-playbook: 
	@echo "This will create a Vagrant machine on localhost and run the playbook on it. Continue? (y/n)"
	@read -p "> " confirm; \
        if [ "$$confirm" = "y" ]; then \
                ./test-playbook.sh; \
                echo "Playbook deployed. Please use 'vagrant ssh' to connect to the machine and check the deployment."; \
        else \
                echo "Test canceled."; \
        fi


# Encrypt all vault.yml files in group_vars folder and subfolders
.PHONY: encrypt-vault-files
encrypt-vault-files: venv
	find group_vars -type f -name 'vault.yml' -exec $(VENV_NAME)/bin/ansible-vault encrypt --vault-password-file .vault.pwd {} \;
	@echo "Vault files encrypted."

# Decrypt all vault.yml files in group_vars folder and subfolders
.PHONY: decrypt-vault-files
decrypt-vault-files: venv
	find group_vars -type f -name 'vault.yml' -exec $(VENV_NAME)/bin/ansible-vault decrypt --vault-password-file .vault.pwd {} \;
	@echo "Vault files decrypted."


# Clean up the virtual environment
.PHONY: clean
clean:
	$(VENV_NAME)/bin/deactivate
	rm -rf $(VENV_NAME)
	@echo "Virtual environment '$(VENV_NAME)' removed."
