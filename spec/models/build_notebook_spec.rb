require "rails_helper"

RSpec.describe Notebook do 
    let!(:notebook) {FactoryBot.create(:notebook)}

    context "user exists" do
        it 'title should be present' do
            notebook.title = nil
            expect(notebook).to_not be_valid
        end

        it 'body should be present' do
            subject.body = nil
            expect(subject).to_not be_valid
        end
    end
end
