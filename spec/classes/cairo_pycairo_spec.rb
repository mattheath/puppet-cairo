require 'spec_helper'

describe 'cairo::pycairo' do

  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it { should include_class('homebrew') }
  it { should include_class('python') }
  it { should include_class('cairo::pycairo') }
  it { should contain_homebrew__formula('py2cairo') }
  it { should contain_package('boxen/brews/py2cairo') }

end
