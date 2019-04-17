class QuestionBuilderFacade
    def easy_film_questions 
        questions_data =  service.get_easy_film_questions
        question_obj = questions_data.map do |s_question_data|
            Question.new(s_question_data)
        end
    end 
    
    def medium_film_questions 
        questions_data =  service.get_medium_film_questions
        questions_data.map do |s_question_data|
            Question.new(s_question_data)
        end
    end 
    
    def hard_film_questions 
        questions_data =  service.get_hard_film_questions
        questions_data.map do |s_question_data|
            Question.new(s_question_data)
        end
    end 

    #maybe pulling the service out is adding to abstraction? get opinions.
    def service
        TriviaService.new
    end
    
    def clean_question(question)
        clean = question.gsub(/&quot;/, '"')
        cleaner = clean.gsub(/&amp;/, '&')
        cleanest = cleaner.gsub(/&#039;/, '`')
    end 

    def display_choices(correct, incorrect)
        choices = []
        choices << incorrect
        choices << correct
        choices.flatten.shuffle.each { |c| puts c }
    end 


end 