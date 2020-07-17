require 'rails_helper'

RSpec.describe Notebook, type: :model do
    subject { Notebook.new(title: "Hello", body: "Test") }
    before { subject.save }

    it 'title should be present' do
        subject.title = nil
        expect(subject).to_not be_valid
    end
    
    it 'body should be present' do
        subject.body = nil
        expect(subject).to_not be_valid
    end
    
end