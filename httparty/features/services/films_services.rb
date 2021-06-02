module Rest
    class Films
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_films
            self.class.get('/films')
        end      
    end
end