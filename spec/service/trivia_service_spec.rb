require 'rails_helper'

describe "Trivia Service" do 
    it "can get json back" do 
        service = TriviaService.new
        
        expect(service).to be_an_instance_of(TriviaService)

        expect(service.get_easy_film_questions[0]).to have_key(:category)
        expect(service.get_easy_film_questions[0]).to have_key(:type)
        expect(service.get_easy_film_questions[0]).to have_key(:difficulty)
        expect(service.get_easy_film_questions[0]).to have_key(:question)
        expect(service.get_easy_film_questions[0]).to have_key(:correct_answer)
        expect(service.get_easy_film_questions[0]).to have_key(:incorrect_answers)
    end 

    it "can get correct diffuclty for question" do
        service = TriviaService.new
        
        expect(service.get_easy_film_questions[0]).to have_key(:difficulty)
        expect(service.get_easy_film_questions[0][:difficulty]).to eq("easy")

        expect(service.get_medium_film_questions[0]).to have_key(:difficulty)
        expect(service.get_medium_film_questions[0][:difficulty]).to eq("medium")
        
        expect(service.get_hard_film_questions[0]).to have_key(:difficulty)
        expect(service.get_hard_film_questions[0][:difficulty]).to eq("hard")
    end 
end 