#
# Cookbook Name:: sickbeard
# Recipe:: default
#
# Copyright 2015 Brandon Raabe
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# %w(git python-pip python-lxml).each do |dep|
#   package dep
# end

# python_pip 'pyopenssl'

package 'git'

python_runtime '2'

python_package 'Cheetah'

git sickbeard_home do
  repository sickbeard_repository
  revision tagged_revision_for_version
  action :export
end

user sickbeard_user do
  home sickbeard_home
  manage_home true
  system true
end

# @TODO create resource/provider
# sickbeard_server '/opt/sickbeard' do
#   quiet true
#   nolaunch true
#   pidfile nil
#   port nil
#   datadir nil
#   config nil
#   noresize nil
# end

template '/opt/sickbeard/sickbeard/version.py' do
  owner sickbeard_user
  group sickbeard_user
  mode '0644'
  variables(version: sickbeard_version)
end

template '/etc/init.d/sickbeard' do
  source 'sickbeard.init.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/etc/default/sickbeard' do
  source 'sickbeard.defaults.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

# The application writes to this file as changes are made, so managing it with
# Chef is nearly pointless. We will just create it if it's not already there.
directory '/var/opt/sickbeard' do
  owner sickbeard_user
  group sickbeard_user
  mode '0755'
  recursive true
end

template '/var/opt/sickbeard/config.ini' do
  source 'sickbeard.ini.erb'
  owner sickbeard_user
  group sickbeard_user
  mode '0644'
  action :create_if_missing
end

service 'sickbeard' do
  supports [:restart, :status]
  action [:enable, :start]
end
