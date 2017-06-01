This playbook provisions a CentOS 7.3/Ubuntu 16.04 machine with everything you need in order to
use `kubeadm` and `CRI-O` (no `docker` no more). Simply run:

```sh
./run.sh centos <IP or hostname>
# if you're on Ubuntu
./run.sh ubuntu <IP or hostname>
```

**make sure the machine is reachable via SSH w/o password input**

```
ssh-copy-id root@<ip or hostname>
```

You can then follow the `kubeadm` [docs](https://kubernetes.io/docs/getting-started-guides/kubeadm/) to install Kubernetes.
