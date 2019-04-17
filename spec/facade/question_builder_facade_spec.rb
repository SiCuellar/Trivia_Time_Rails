require 'rails_helper'

describe "question builder facade" do
    it 'exists' do 
        qfacade = QuestionBuilderFacade.new

        expect(qfacade).to be_an_instance_of(QuestionBuilderFacade)
    end 
    
    it '#easy_film_questions' do 
        qfacade = QuestionBuilderFacade.new

        expect(qfacade.easy_film_questions).to be_an(Array)
        expect(qfacade.easy_film_questions.first).to be_an_instance_of(Question)

        qfacade.easy_film_questions.each do |q|
            expect(q).to be_a(Question)
        end
    end 
    
    it '#medium_film_questions' do 
        qfacade = QuestionBuilderFacade.new

        expect(qfacade.medium_film_questions).to be_an(Array)
        expect(qfacade.medium_film_questions.first).to be_an_instance_of(Question)

        qfacade.medium_film_questions.each do |q|
            expect(q).to be_a(Question)
        end
    end 
    
    it '#hard_film_questions' do 
        qfacade = QuestionBuilderFacade.new

        expect(qfacade.hard_film_questions).to be_an(Array)
        expect(qfacade.hard_film_questions.first).to be_an_instance_of(Question)

        qfacade.hard_film_questions.each do |q|
            expect(q).to be_a(Question)
        end
    end 

    it "#clean_question" do
        q = "Which of the following was not one of &quot;The Magnificent Seven&quot;?"
        qfacade = QuestionBuilderFacade.new

        clean = ('Which of the following was not one of "The Magnificent Seven"?')

        expect(qfacade.clean_question(q)).to eq(clean)
    end
end 
