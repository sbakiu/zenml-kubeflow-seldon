opt-out:
	zenml analytics opt-out

integrations:
	zenml integration install evidently -f
	zenml integration install mlflow -f
	zenml integration install kubeflow -f

setup:
	zenml container-registry register local_registry --flavor=default --uri=localhost:5000
	zenml orchestrator register kubeflow_orchestrator --flavor=kubeflow --synchronous=true

up:
	zenml stack set local_kubeflow_stack
	zenml stack up

down:
	zenml stack down -f