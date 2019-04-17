require "rails_helper"

describe "visitor visites Root Page" do
    it "visitor sees Login Register button and website Title" do
        visit "/"
        expect(page).to have_content("Welcome")       
        expect(page).to have_content("Please Login or Register")       
        expect(page).to have_link("Login/Register")       
    end
end 