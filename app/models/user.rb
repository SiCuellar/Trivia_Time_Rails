class User < ApplicationRecord
    validates_presence_of :name, :google_token, :email, :google_client_id

    def self.find_or_create_from_auth_hash(auth)
        user = find_or_create_by(google_client_id: auth["uid"])
        user.name = auth["info"]["first_name"]
        user.email = auth["info"]["email"]
        user.google_token = auth["credentials"]["token"]
        user.save
        user
    end
end
