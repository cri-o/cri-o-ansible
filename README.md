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

You can then follow the `kubeadm` [docs](https://kubernetes.io/docs/getting-started-guides/kubeadm/) to install Kubernetes. I've tested the whole flow with a [custom Flannel pod network](https://gist.githubusercontent.com/sameo/cf92f65ae54a87807ed294f3de658bcf/raw/95d9a66a2268b779dbb25988541136d1ed2fbfe2/flannel.yaml), the official one seems broken.
