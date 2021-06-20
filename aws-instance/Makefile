.DEFAULT_GOAL := info

info:
	@echo init, show, plan, apply, destroy, state_list, output, gen_graph, dot_graph

init:
	terraform init

show:
	terraform show

plan:
	terraform plan

apply:
	terraform apply

desploy:
	terraform destroy

state_list:
	terraform state list

output:
	terraform output

gen_graph:
	terraform graph >>graphviz.dot

dot_graph:
	dot -Tpdf graphviz.dot > file.pdf