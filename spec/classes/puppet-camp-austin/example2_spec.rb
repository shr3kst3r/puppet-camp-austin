require 'spec_helper'

describe 'puppet-camp-austin::example2' do
    it 'should include git' do
        should contain_package('git')
    end
end
