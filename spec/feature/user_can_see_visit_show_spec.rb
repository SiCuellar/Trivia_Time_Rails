require 'rails_helper'

describe "user can visit user show page" do 
    it "can see category/difficulty level buttons" do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        visit dashboard_path(user)
        expect(page).to have_content("Welcome, #{user.name}")
        save_and_open_page
    end  
end 