module Rest
    class Planets
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_planets
            self.class.get('/planets')
        end
    end
end