Failed to pull docker image in pod - Status: ImagePullBackOff
=============================================================

.. post:: 20/05/2019
   :tags: kubernetes

List the pods
-------------

.. code::

   snap run kubectl get pods

   NAME                     READY   STATUS             RESTARTS   AGE
   dummy-5dfb4dd68b-2k5lz   0/1     ImagePullBackOff   0          5m20s

Inspect specific pod
--------------------

Why did that fail?

.. code::

   snap run kubectl describe pod dummy-5dfb4dd68b-2k5lz

   Events:
     Type     Reason             Age                    From               Message
     ----     ------             ----                   ----               -------
     Normal   Scheduled          3m38s                  default-scheduler  Successfully assigned default/dummy-5dfb4dd68b-2k5lz to darkman
     Normal   Pulling            2m57s (x3 over 3m37s)  kubelet, darkman   Pulling image "ahmadnazir/dummy-server"
     Warning  Failed             2m56s (x3 over 3m36s)  kubelet, darkman   Failed to pull image "ahmadnazir/dummy-server": rpc error: code = Unknown desc = failed to resolve image "docker.io/ahmadnazir/dummy-server:latest": no available registry endpoint: docker.io/ahmadnazir/dummy-server:latest not found
     Warning  Failed             2m56s (x3 over 3m36s)  kubelet, darkman   Error: ErrImagePull
     Warning  MissingClusterDNS  2m33s (x8 over 3m37s)  kubelet, darkman   pod: "dummy-5dfb4dd68b-2k5lz_default(b6b34966-7614-11e9-802c-482ae332735d)". kubelet does not have ClusterDNS IP configured and cannot create Pod using "ClusterFirst" policy. Falling back to "Default" policy.
     Normal   BackOff            2m33s (x4 over 3m35s)  kubelet, darkman   Back-off pulling image "ahmadnazir/dummy-server"
     Warning  Failed             2m33s (x4 over 3m35s)  kubelet, darkman   Error: ImagePullBackOff

The image doesn't exist. Now I realize that I was missing the tag. It should've been `ahmadnazir/dummy-server:0.1`
