# golden-container
Trivial definition of an image build in compliance with HACBS policy

# To build in AppStudio

Best use `hack/rebuild.sh` from [ec-cli](https://github.com/hacbs-contract/ec-cli). To build manually create the following `PipelineRun`:

```yaml
apiVersion: tekton.dev/v1beta1
kind: PipelineRun
metadata:
  name: golden-container
spec:
  params:
  - name: git-url
    value: https://github.com/hacbs-contract/golden-container.git
  - name: output-image
    value: quay.io/hacbs-contract-demo/golden-container
  - name: dockerfile
    value: Containerfile
  - name: path-context
    value: .
  - name: hacbs
    value: "true"
  - name: rebuild
    value: "true"
  pipelineRef:
    resolver: bundles
    resource:
    - name: docker-build
      value: quay.io/redhat-appstudio-tekton-catalog/pipeline-hacbs-docker-build:devel
```
