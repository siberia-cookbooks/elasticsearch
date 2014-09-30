#
# Cookbook Name:: elasticsearch
# Recipe:: default
#
# Copyright 2014, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

package "elasticsearch" do
  action :install
end

template "/opt/local/etc/elasticsearch/elasticsearch.yml" do
  source "elasticsearch.yml.erb"
  owner "root"
  group "root"
  mode "0444"
  notifies :restart, "service[pkgsrc/elasticsearch]", :delayed
end

service "pkgsrc/elasticsearch" do
  action [ :enable ]
end
