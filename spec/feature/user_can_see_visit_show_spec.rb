require 'rails_helper'

describe "user can visit user show page" do 
    it "can see category/difficulty level buttons" do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        # binding.pry
        visit "users/#{user.id}"
        # visit user_path(user)
        expect(page).to have_content("Welcome, #{user.name}")
        # expect(page).to have_link("Film Trivia")

    end  
end 