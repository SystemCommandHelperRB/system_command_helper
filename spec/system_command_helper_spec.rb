require 'spec_helper'

describe SystemCommandHelper do
  it 'has a version number' do
    expect(SystemCommandHelper::VERSION).not_to be nil
  end

  it 'settings' do
    class A
      include SystemCommandHelper
    end

    a = A.new
    a.no_exec = true
    expect(a.no_exec).to eq(true)
    a.quiet = true
    expect(a.quiet).to eq(true)
  end
end
