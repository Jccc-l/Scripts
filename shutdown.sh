#!/bin/sh
sudo systemctl stop clash-core-service
sudo systemctl stop NetworkManager
sudo systemctl stop bluetooth
sudo systemctl stop sshd
