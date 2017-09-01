require 'spec_helper'
describe 'tns_repo' do
  context 'with default values for all parameters' do
    it { should contain_class('tns_repo') }
  end
end
