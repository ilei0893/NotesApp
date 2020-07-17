require 'rails_helper'

RSpec.describe User do
    let!(:user) { FactoryBot.create(:user) }
  
    describe "validations" do
        it 'should validate email' do
            should validate_presence_of(:email)
        end
        
        it 'validate password' do
            should validate_length_of(:password)
        end 
    end
end
