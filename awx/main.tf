# This project's AWX job templates. central-awx calls this module once per
# managed branch, from that branch, so each branch defines its own templates.



module "awx_job_template" {
  source  = var.modules.job_template
  context = var.context

  name      = "ping"
  playbook  = "playbooks/ping.yml"
}



module "awx_job_template" {
  source  = var.modules.job_template
  context = var.context

  name     = "hello_shell"
  playbook = "playbooks/run_a_shell_command.yml"
}

