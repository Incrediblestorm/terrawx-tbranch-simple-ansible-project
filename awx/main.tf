# This project's AWX job templates. central-awx calls this module once per
# managed branch, from that branch, so each branch defines its own templates.

resource "awx_job_template" "ping" {
  name      = "${var.name_prefix}ping"
  project   = var.project_id
  inventory = var.inventory_id
  playbook  = "playbooks/ping.yml"
}

resource "awx_job_template_credential" "ping" {
  job_template_id = awx_job_template.ping.id
  credential_ids  = [var.credential_id]
}
