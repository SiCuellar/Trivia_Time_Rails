class UsersController < ApplicationController 
    def show 
        
        @current_user = current_user
        q_builder_facade = QuestionBuilderFacade.new
        @easy_film_questions = q_builder_facade.easy_film_questions
    end 
end 