# Helm Chart to deploy the acend webide

This helm chart deploys:

* ingress, under which the webide can be accessed
* volume, where the current workplace will be stored in
* webide, Deployment
* Password will be generated (overwrite with `--set ide.password=<password>`)

```bash
helm install --namespace <namespace> \
--set ingress.hosts[0].host=webide-<namespace>.<appdomain> \
--set ingress.tls[0].hosts[0]=webide-<namespace>.<appdomain> \
--set ingress.tls[0].secretName=webide-<namespace>-<appdomain> \
--set ingress.hosts[0].paths[0]=/  \
firstrel ./
```
