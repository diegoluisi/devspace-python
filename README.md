# 🐍 DevSpace Python

[![Python application](https://github.com/diegoluisi/hello-python/actions/workflows/python-app.yml/badge.svg)](https://github.com/diegoluisi/hello-python/actions/workflows/python-app.yml)
[![Docker Image CI](https://github.com/diegoluisi/devspace-python/actions/workflows/docker-image.yml/badge.svg)](https://github.com/diegoluisi/devspace-python/actions/workflows/docker-image.yml)

DevSpace is an open-source developer tool for Kubernetes that lets you develop and deploy cloud-native software faster

### 💡 Why DevSpace
- Streamlined Workflow
- Faster Iterations
- Feature-Rich UI
### 🛠️ Requirements

|  Tools   | Version |
| :------: | :-----: |
| kubectl  | v1.22.3 |
| devspace | 5.18.4  |
|   k3d    | v5.3.0  |

### <img align="left" alt="Kubernetes" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/kubernetes/kubernetes.png" /> [kubectl](https://kubernetes.io/)

- [Install kubectl on Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
- [Install kubectl on macOS](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos)
- [Install kubectl on Windows](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows)

### <img align="left" alt="DevSpace" width="26px" src="https://avatars.githubusercontent.com/u/17330169?s=200&v=4" /> [DevSpace](https://devspace.sh/)


- [Install DevSpace](https://devspace.sh/cli/docs/getting-started/installation)

### <img align="left" alt="K3D" width="26px" src="https://k3d.io/v5.3.0/static/img/k3d_logo_black_blue.svg" /> [k3d](https://k3d.io/)


```bash
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
```

### <img align="left" alt="GitHub" width="26px" src="https://raw.githubusercontent.com/github/explore/78df643247d429f6cc873026c0622819ad797942/topics/github/github.png" /> Clone this project

```bash
git clone git@github.com:diegoluisi/devspace-python.git
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

### 🌎 Start Development

```bash
devspace dev

  ____              ____
  |  _ \  _____   __/ ___| _ __   __ _  ___ ___
  | | | |/ _ \ \ / /\___ \| '_ \ / _` |/ __/ _ \
  | |_| |  __/\ V /  ___) | |_) | (_| | (_|  __/
  |____/ \___| \_/  |____/| .__/ \__,_|\___\___|
                          |_|

Welcome to your development container!

This is how you can work with it:
- Run `python main.py` to build the application
- Files will be synchronized between your local machine and this container
- Some ports will be forwarded, so you can access this container on your local machine via http://localhost

```

#### After the container start,  start application

```bash 
python main.py
```
#### Check the application status 

```bash
curl http://localhost/
Hello World!
```
#### Debugging 
In your favorite editor edit the main.py file and save, stop and start application.

```bash
CTRL+C
python main.py
``` 

### 📈 [DevSpace UI](http://localhost:8090)

![DevSpace UI](.images/devspace-ui.png)

### ♻️ Purge
```bash
devspace purge
```