# Helm Action

Github Action to install or upgrade Helm release. 

## Usage

```yaml
- uses: akabos/action-helm@master
  with:
    name: nginx
    chart: stable/nginx:1
    values: ./overrides.yaml
```

## Inputs

See [action metadata file](action.yml) for complete list of inputs.
  