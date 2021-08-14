output "bastion_public_ip" {
  value = module.bastion.public_ip
}

output "test01" {
  value = module.bastion.security_groups
}

output "worker_ips" {
  value = module.workers.private_ip
}

output "worker_hostnames" {
  value = module.workers.private_dns
}

output "controller_hostnames" {
  value = module.controllers.private_dns
}

output "controller_ips" {
  value = module.controllers.private_ip
}
