require "pry"
# your code goes here
class Person
    
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        
        @name = name        
    end

    def happiness=(happiness_value)
        if happiness_value > 10
            @happiness = 10
        elsif
            happiness_value < 0
            @happiness = 0
        else
            @happiness = happiness_value
        end
    end

    def hygiene=(hygiene_value)
        if hygiene_value > 10
            @hygiene = 10
        elsif
            hygiene_value < 0
            @hygiene = 0
        else
            @hygiene = hygiene_value
        end

        @hygiene
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        #binding.pry
        self.hygiene = hygiene + 4
        #binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= hygiene - 3
        self.happiness= happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness= happiness + 3
        friend.happiness= friend.happiness + 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness= friend.happiness - 2
            self.happiness= happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness= friend.happiness + 1
            self.happiness= happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end
end