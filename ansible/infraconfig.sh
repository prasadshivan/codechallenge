cd /opt/codechallenge/terraform/dev && terrafrom apply -auto-approve
ansible-playbook installdocker.yml  --private-key=Jenkins.pem -u ubuntu

