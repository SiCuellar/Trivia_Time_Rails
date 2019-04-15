require 'rails_helper'

describe 'question' do 
    it 'exists' do 
        data = {:category=>"Entertainment: Film",
                :type=>"multiple",
                :difficulty=>"easy",
                :question=>"What breed of dog was Marley in the film &quot;Marley &amp; Me&quot; (2008)?",
                :correct_answer=>"Labrador Retriever",
                :incorrect_answers=>["Golden Retriever", "Dalmatian", "Shiba Inu"]}
        
        question = Question.new(data)

        expect(question).to be_a(Question)
        expect(question.category).to eq("Entertainment: Film")
        expect(question.type).to eq("multiple")
        expect(question.difficulty).to eq("easy")
        expect(question.question).to eq("What breed of dog was Marley in the film &quot;Marley &amp; Me&quot; (2008)?")
        expect(question.correct_answer).to eq("Labrador Retriever")
        expect(question.incorrect_answers).to eq(["Golden Retriever", "Dalmatian", "Shiba Inu"])
    end 
end 