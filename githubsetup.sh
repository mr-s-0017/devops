#!/bin/bash
ssh-keygen -t ed25519 -C sahilkapoor0017@gmail.com
touch ~/.ssh/config
echo "Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com
