 helm upgrade --install --set traefik-ingress-controller.cf_email=$CF_EMAIL --set traefik-ingress-controller.cf_token=$CF_DNS_API_TOKEN base ./base

 kubeseal --format yaml --controller-namespace default --scope cluster-wide < ./onion/charts/openvpn/templates/unsealed-secret.yaml >./onion/charts/openvpn/templates/secret.yaml