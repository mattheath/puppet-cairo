require 'spec_helper'

describe 'cairo' do

  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it { should contain_class('cairo') }
  it { should contain_package('cairo') }
end
