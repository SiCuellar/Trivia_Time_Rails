require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:google_token) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:google_client_id) }
  end
end

