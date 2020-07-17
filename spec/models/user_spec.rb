require 'rails_helper'

RSpec.describe User, type: :model do
    subject { User.new(email: "test@test.com", password:"pass") }
    before { subject.save }

    it 'email should be present' do
        subject.email = nil
        expect(subject).to_not be_valid
    end
    
    it 'password should be greater than 6 characters' do
        expect(subject).to_not be_valid
    end 
    
end
