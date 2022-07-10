opt-out:
	zenml analytics opt-out
integrations:
	zenml integration install evidently -f
	zenml integration install mlflow -f
	zenml integration install kubeflow -f
