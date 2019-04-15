class QuestionBuilderFacade
    def questions 
        questions_data =  service.get_easy_film_questions
        questions_data.each do |s_question_data|
            # binding.pry
            question.new(s_question_data)
        end
    end 

    def service
        TriviaService.new
    end 
end 