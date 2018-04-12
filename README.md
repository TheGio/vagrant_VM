# vagrant_VM

TO DO:
Find working vagrant image (avoid centos/6 image!!)
Install required packages
Setup Vagrantfile
Setup puppet dir structure

Setup puppet code base:
- install DB
- install apache
- set apache and mysql to run on boot
- install any other dependencies e.g. python, django (pip)
- create DB, create and populate a DB table
- deploy python web app and any apache config required
- restart apache (remember to ADD NOTIFY apache to puppet code)


Test:
- point browser to vagrant_IP:port




