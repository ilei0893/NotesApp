require 'rails_helper'

RSpec.describe User do
    let!(:user) { FactoryBot.create(:user) }
  
    it 'email should be present' do
        user.email = nil
        expect(user).to_not be_valid
    end
    
    it 'password should be greater than 6 characters' do
        expect(user).to validate_length_of(user.password).is_at_least(6)
    end 
    
end
