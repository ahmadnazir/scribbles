Helm
====

**Helm is the package manager for Kubernetes.**

A package in helm is called a **chart**.

In order to use helm, tiller needs to be installed in the cluster which **manages installations of the charts** in the cluster.

Install tiller in the cluster
-----------------------------

.. code::

   snap run helm init

Create a chart
--------------

.. code::

   snap run helm create my-service

which creates a directory structure:

.. code::

   my-service
   ├── charts
   ├── Chart.yaml
   ├── templates
   │   ├── deployment.yaml
   │   ├── _helpers.tpl
   │   ├── ingress.yaml
   │   ├── NOTES.txt
   │   ├── service.yaml
   │   └── tests
   │       └── test-connection.yaml
   └── values.yaml
   
   3 directories, 8 files


Specify the image
-----------------

Specify the docker image and tag in the `values.yaml` file.

.. code::

   image:
     repository: ahmadnazir/dummy-server
     tag: 0.2
     pullPolicy: IfNotPresent


Install chart
-------------

.. code::

   snap run helm install --dry-run --debug ./my-service
   snap run helm install ./my-service


This gives an output:

.. code::

   NAME:   zealous-mongoose
   LAST DEPLOYED: Tue May 21 08:50:49 2019
   NAMESPACE: default
   STATUS: DEPLOYED
   
   RESOURCES:
   ==> v1/Deployment
   NAME                         READY  UP-TO-DATE  AVAILABLE  AGE
   zealous-mongoose-my-service  0/1    1           0          0s
   
   ==> v1/Pod(related)
   NAME                                         READY  STATUS             RESTARTS  AGE
   zealous-mongoose-my-service-7c6c94d45-b5pv5  0/1    ContainerCreating  0         0s
   
   ==> v1/Service
   NAME                         TYPE       CLUSTER-IP      EXTERNAL-IP  PORT(S)  AGE
   zealous-mongoose-my-service  ClusterIP  10.152.183.114  <none>       80/TCP   0s
   
   
   NOTES:
   1. Get the application URL by running these commands:
     export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=my-service,app.kubernetes.io/instance=zealous-mongoose" -o jsonpath="{.items[0].metadata.name}")
     echo "Visit http://127.0.0.1:8080 to use your application"
     kubectl port-forward $POD_NAME 8080:80


Try it out
----------

In order to access the service, it needs to be exposed:

.. code::

   export POD_NAME=$(snap run kubectl get pods --namespace default -l "app.kubernetes.io/name=my-service,app.kubernetes.io/instance=zealous-mongoose" -o jsonpath="{.items[0].metadata.name}")
   snap run kubectl port-forward $POD_NAME 8088:8088


.. code::

   curl localhost:8088
