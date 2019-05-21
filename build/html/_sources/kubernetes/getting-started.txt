Getting started with Kubernetes
===============================

Install
-------


Create a deployment
-------------------

.. code::

   snap run microk8s.kubectl create deployment my-deployment --image=ahmadnazir/dummy-server:0.2

Make sure that it is created
----------------------------

.. code::

   snap run kubectl get deployments
   snap run kubectl describe deployments

View the pod
------------

.. code::

   snap run kubectl get pods

   NAME                               READY   STATUS    RESTARTS   AGE
   my-deployment-c5755fb5c-2n6s6   1/1     Running   0          13s

Expose deployment
------------------

.. code::

   snap run microk8s.kubectl expose deployment my-deployment --type=NodePort --port=8088 --name=my-service

Get the services
----------------

.. code::

   snap run kubectl get services

   NAME               TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
   my-deployment      NodePort    10.152.183.73   <none>        8088:31821/TCP   20s


Test service
------------

.. code::

   IP=`snap run kubectl get services | grep my-service  | awk '{print $3}'`
   curl -i -XGET "http://${IP}:8088"

Cleanup
-------

.. code::

   snap run kubectl delete service my-service
   snap run kubectl delete deployment my-deployment

References
----------

- `Install a local kubernetes with Microk8s`_

.. _Install a local kubernetes with Microk8s: https://tutorials.ubuntu.com/tutorial/install-a-local-kubernetes-with-microk8s#4
