class Answer < ActiveRecord::Base
    belongs_to :question
    
    def gravatar
        "https://secure.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
    end
end
