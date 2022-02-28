# Hello Python

### Requirements

|  Tools   | Version |
| :------: | :-----: |
| kubectl  | v1.22.3 |
| devspace | 5.18.4  |
|   k3d    | v5.3.0  |

### [kubectl](https://kubernetes.io/)

- [Install kubectl on Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
- [Install kubectl on macOS](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos)
- [Install kubectl on Windows](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows)

### [DevSpace](https://devspace.sh/)

- [Install DevSpace](https://devspace.sh/cli/docs/getting-started/installation)

### [k3d](https://k3d.io/)

```bash
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
```

### Create Cluster and NameSpace

```bash
k3d cluster create --config k3d.yaml
kubectl create namespace hello-python
```

### Configure DevSpace

```bash
devspace use namespace hello-python
```

### Start Development

```bash
devspace dev
```

After the container start please run 

```bash 
python main.py
```