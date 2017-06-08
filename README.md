This playbook provisions a CentOS 7.3/Ubuntu 16.04/RHEL/Fedora 25+ machine with everything you need in order to
use `kubeadm` and `CRI-O` (no `docker` anymore). Simply run:

Create an ansible `hosts` file (adjust anything needed like `ansible_python_interpreter`):
```sh
$ cat hosts
192.168.1.122 ansible_python_interpreter='python3'
192.168.1.123
```

**make sure the machine is reachable via SSH w/o password input before running the playbook**

```
ssh-copy-id root@<ip or hostname>
```

Then simply run:

```sh
$ ansible-playbook -i hosts cri-o.yml
```

You can then follow the `kubeadm` [docs](https://kubernetes.io/docs/getting-started-guides/kubeadm/) to install Kubernetes. I've tested the whole flow with a [custom Flannel pod network](https://gist.githubusercontent.com/sameo/cf92f65ae54a87807ed294f3de658bcf/raw/95d9a66a2268b779dbb25988541136d1ed2fbfe2/flannel.yaml), the official one seems broken.

What is `cri-o-ansible` _not_ doing?
-

- `cri-o-ansible` is not going to install any CNI network configuration. It just installs CNI plugins. Network configuration is left to Kubernetes and Openshift (or you following [this](https://github.com/kubernetes-incubator/cri-o/blob/master/contrib/cni/README.md))
