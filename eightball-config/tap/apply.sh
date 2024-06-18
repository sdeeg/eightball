tanzu apps workload apply eightball-app \
      --local-path ./eightball-app/ \
      --build-env "BP_JVM_VERSION=21" \
      --type web \
      --label "networking.knative.dev/disable-external-domain-tls=true"
