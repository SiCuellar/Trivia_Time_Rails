require 'rails_helper'

describe "question builder facade" do
    it 'exists' do 
        qfacade = QuestionBuilderFacade.new

        expect(qfacade).to be_an_instance_of(QuestionBuilderFacade)
    end 
    
    it '#questions' do 
        qfacade = QuestionBuilderFacade.new

        expect(qfacade.questions).to be_an(Array)
        # expect(qfacade.questions.first).to be_an_instance_of(Question)
    end 
end 
