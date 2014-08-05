#
# Cookbook Name:: tomcat7
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "tomcat" do
  comment "tomcat user"
  home "/home/tomcat"
  shell "/bin/false"
  password nil
  supports :manage_home => true
  action [ :create, :manage] 
end


group "tomcat" do
  members [ 'tomcat'  ]
  action :create
end


bash "install tomcat" do
  code <<-EOC
    sudo yum -y install yum-plugin-priorities
    sudo rpm -Uvh http://mirrors.dotsrc.org/jpackage/6.0/generic/free/RPMS/jpackage-release-6-3.jpp6.noarch.rpm
    sudo yum clean all
    sudo yum -y update --nogpgcheck
    sudo yum -y install tomcat7 tomcat7-webapps tomcat7-admin-webapps --nogpgcheck
  EOC
  creates "/etc/init.d/tomcat7"
end

cookbook_file "/usr/share/tomcat7/webapps/openam.war" do
  source "openam.war"
  owner 'tomcat'
  group 'tomcat'
  mode '00644'
  action :create
end

service "tomcat7" do
  action [ :enable, :start  ]
end

