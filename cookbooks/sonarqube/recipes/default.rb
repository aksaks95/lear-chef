#
# Cookbook Name:: sonarqube
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "java"

include_recipe "sonarqube::#{node['sonarqube']['install_flavor']}"