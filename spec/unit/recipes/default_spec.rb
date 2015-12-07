#
# Cookbook Name:: couchpotato
# Spec:: default
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


require 'spec_helper'

describe 'couchpotato::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'adds the service user' do
      expect(chef_run).to create_user('couchpotato')
    end

    it 'installs couchpotato dependencies' do
      expect(chef_run).to install_package('git')
      expect(chef_run).to install_package('python-pip')
      expect(chef_run).to install_package('python-lxml')
      expect(chef_run).to install_python_pip('pyopenssl')
    end

    it 'clones the git repository at the correct version/revision' do
      expect(chef_run).to sync_git('/opt/couchpotato')
        .with(revision: 'e9593f60e5f709a13c2401e0b8d94e1073efb2e2')
    end

    it 'creates the init script' do
      expect(chef_run).to create_template('/etc/init.d/couchpotato')
    end

    it 'creates the init script defaults file' do
      expect(chef_run).to create_template('/etc/default/couchpotato')
    end

    it 'enables and starts the service' do
      expect(chef_run).to enable_service('couchpotato')
      expect(chef_run).to start_service('couchpotato')
    end
  end
end
