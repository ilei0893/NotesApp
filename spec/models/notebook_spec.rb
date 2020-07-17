require "rails_helper"

RSpec.describe Notebook do 
    let!(:notebook) {FactoryBot.create(:notebook)}

    describe "validations" do
        it 'should validate title' do
            should validate_presence_of(:title)
        end

        it 'should validate body' do
            should validate_presence_of(:body)
        end
    end
end
