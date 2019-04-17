class UsersController < ApplicationController 
    def show 
        
        @current_user = current_user
        @q_builder_facade = QuestionBuilderFacade.new
    end 
end 