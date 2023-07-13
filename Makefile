NAMESPACE = default

release-influxdb2-chart:
	helm repo add influxdata https://helm.influxdata.com
	helm upgrade --install -n ${NAMESPACE} --version 2.1.1 -f charts/influxdbv2-values.yaml jmeter-db influxdata/influxdb2

uninstall-influxdb2-chart:
	helm uninstall -n ${NAMESPACE} jmeter-db

release-grafana-chart:
	helm repo add grafana https://grafana.github.io/helm-charts
	helm upgrade --install -n ${NAMESPACE} --version 6.57.3 -f charts/grafana-values.yaml jmeter-dashboard  grafana/grafana

uninstall-grafana-chart:
	helm uninstall -n ${NAMESPACE} jmeter-dashboard

install: release-influxdb2-chart release-grafana-chart

clean: uninstall-influxdb2-chart uninstall-grafana-chart