class Question < ActiveRecord::Base
    has_many :answers
    
    def gravatar
        "https://secure.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
    end
end
