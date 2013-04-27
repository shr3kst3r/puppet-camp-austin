require 'spec_helper'

describe 'puppet-camp-austin::example3' do
    describe 'operating system is Debian' do
        let(:facts) { {:operatingsystem => 'Debian'} }

        it 'should include git' do
            should contain_package('git')
        end
    end

    describe 'operating system is MINIX' do
        let(:facts) { {:operatingsystem => 'MINIX'} }

        it 'should notify a warning' do
            should contain_notify('git cannot be install for this package')
        end
    end
end
