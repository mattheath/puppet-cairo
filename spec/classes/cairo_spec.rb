require 'spec_helper'

describe 'cairo' do

  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it { should include_class('homebrew') }
  it { should contain_homebrew__formula('cairo') }
  it { should contain_package('boxen/brews/cairo') }

end
