output "app_url" {
    value = "${lower(var.ecs_service_name)}.${data.terraform_remote_state.platform.outputs.ecs_domain_name}"
    #value = data.terraform_remote_state.platform.outputs.ecs_domain_name
}