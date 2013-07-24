require 'spec_helper'

describe 'cairo' do
  it { should contain_class('cairo') }
  it { should contain_package('cairo') }
end
