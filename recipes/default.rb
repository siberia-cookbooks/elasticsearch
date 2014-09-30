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

service "pkgsrc/elasticsearch" do
  action [ :enable ]
end
