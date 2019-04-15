require 'rails_helper'

describe "user can visit user show page" do 
    it "can see category/difficulty level buttons" do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        # binding.pry
        visit user_path(user.id)

    end  
    
    it "can see stats section" do 

    end 
end 