require 'spec_helper'

describe 'cairo' do
  let(:pre_condition) { "class homebrew {}" }

  it { should contain_class('cairo') }
  it { should contain_package('cairo') }
end
