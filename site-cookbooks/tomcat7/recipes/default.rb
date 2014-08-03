#
# Cookbook Name:: tomcat7
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "tomcat6" do
  action [ :install, :upgrade ]
end

service "tomcat6" do
  action [ :enable, :start ]
end
