# kubernetes-learning

# Kubernetes Pod Phases & STATUS Values (Combined View)

This table maps high-level **Pod Phases** to the possible **STATUS** values reported by `kubectl get pods`, with a brief explanation of each.

| **Pod Phase** | **STATUS Values**                                                                 | **Description / Meaning**                                                                                     |
|---------------|-------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| `Pending`     | `ContainerCreating`, `ImagePullBackOff`, `ErrImagePull`, `CreateContainerConfigError`, `NodeAffinity` | Pod has been accepted but is not yet running. Containers are waiting for resources, image pull, or scheduling. |
| `Running`     | `Running`, `CrashLoopBackOff`, `RunContainerError`, `OOMKilled`                   | Pod is bound to a node; containers are running or restarting due to errors.                                   |
| `Succeeded`   | `Succeeded`                                                                        | All containers have successfully completed and exited with exit code 0.                                       |
| `Failed`      | `Failed`                                                                           | One or more containers have failed (non-zero exit code or system termination).                                |
| `Unknown`     | `Unknown`                                                                          | Kubernetes is unable to determine Pod status, usually due to node communication failure.                      |
| `Terminating` | `Terminating`                                                                      | Pod is shutting down (e.g. due to deletion, eviction, or scale-down).                                         |

---

## 🔁 Notes

- `STATUS` values are more detailed than `PHASE` and indicate **container-level or scheduling issues**.
- You can inspect them using `kubectl describe pod <pod-name>`.
- A Pod in `Running` phase may still have containers crashing (`CrashLoopBackOff`), which is why STATUS is critical for debugging.

---

## 📚 References

- [Kubernetes Pod Lifecycle](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/)
- [kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
