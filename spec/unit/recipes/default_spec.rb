#
# Cookbook:: chef-secret-proto
# Spec:: default
#
# Copyright:: 2020, Coveros, Inc., All Rights Reserved.

require 'spec_helper'

describe 'chef-secret-proto::default' do
  context 'When all attributes are default, on Windows 2012R2' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'windows', '2012R2'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
