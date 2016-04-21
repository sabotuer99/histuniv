module HasGravatar

    def gravatar
        "https://secure.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
    end
    
end