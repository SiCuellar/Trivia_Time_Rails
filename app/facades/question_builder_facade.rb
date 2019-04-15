class QuestionBuilderFacade
    def questions 
        questions_data =  service.get_easy_film_questions
        questions_data.map do |s_question_data|
            Question.new(s_question_data)
        end
    end 

    #maybe pulling the service out is adding to abstraction? get opinions.
    def service
        TriviaService.new
    end 
end 