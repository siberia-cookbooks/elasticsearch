#
# Cookbook Name:: elasticsearch
# Attributes:: default
#
# Copyright 2014, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

default['elasticsearch'] = {
  'cluster_name' => 'elasticsearch',
  'network_host' => '127.0.0.1',
}
