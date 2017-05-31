This playbook provisions a CentOS machine with everything you need in order to
use `kubeadm` and `CRI-O` (no `docker` no more). Simply run:

```
./run.sh <IP or hostname>
```

**make sure the machine is reachable via SSH w/o password input**

```
ssh-copy-id root@<ip or hostname>
```

You can then follow the `kubeadm` (docs)[https://kubernetes.io/docs/getting-started-guides/kubeadm/] to install Kubernetes.
