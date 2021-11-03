class Character
    def print
      puts "I'm an empty shell."
    end
end

class Bugs_Bunny < Character
    def prints
        puts "What's up, Doc?"
    end
end

class Walter_White < Character
    def print
        puts "I am not in danger, Skyler. I am the danger. A guy opens his door and gets shot, and you think that of me? No! I am the one who knocks!"
    end
end

class Famous_Character
    def say_catchphrase(character)
        character.print
    end
end


  
Bugs_Bunny.new.print 
Walter_White.new.print
Famous_Character.new.say_catchphrase((Walter_White.new))
  
