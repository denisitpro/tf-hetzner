#cloud-config
users:
    - name: ubuntu
      sudo: ALL=(ALL) NOPASSWD:ALL
      shell: /bin/bash
      ssh_authorized_keys:
        - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO7MRK0SR14QnaopknO/V74zRhlZpbHCX8vefJg1nQha den@pub
      lock_passwd: true
