#!/bin/bash
terraform plan -out=tfplan
terraform apply tfplan