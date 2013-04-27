require 'spec_helper'

describe 'puppet-camp-austin::example1' do
    it 'should include git' do
        should contain_package('git')
    end
end
