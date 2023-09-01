Setting up Jupyter locally
==========================

.. post:: Dec 30, 2020
   :tags: misc

.. code::

   docker run -it -p 8888:8888 -p 4040:4040 \
     --name jupyter \
     --user root \
     jupyter/pyspark-notebook bash
   
   pip install sparkmagic==0.13.1
   jupyter nbextension enable --py --sys-prefix widgetsnbextension # ensure that the extension is installed
   cd `pip show sparkmagic | grep Location | awk '{print $2}'`
   jupyter-kernelspec install sparkmagic/kernels/pysparkkernel
   jupyter serverextension enable --py sparkmagic

Configuration:

.. code::

   {
     "kernel_python_credentials" : {
       "username": "{USERNAME}",
       "base64_password": "{BASE64ENCODEDPASSWORD}",
       "url": "https://{CLUSTERDNSNAME}.azurehdinsight.net/livy"
     },
   
     "kernel_scala_credentials" : {
       "username": "{USERNAME}",
       "base64_password": "{BASE64ENCODEDPASSWORD}",
       "url": "https://{CLUSTERDNSNAME}.azurehdinsight.net/livy"
     },
   
     "custom_headers" : {
       "X-Requested-By": "livy"
     },
   
     "heartbeat_refresh_seconds": 5,
     "livy_server_heartbeat_timeout_seconds": 60,
     "heartbeat_retry_seconds": 1
   }



Start the process:

.. code::

   jupyter notebook --allow-root &



Web login:

.. code::

   jupyter notebook list | awk '{print $1}' | awk -F = '{print $2}'
