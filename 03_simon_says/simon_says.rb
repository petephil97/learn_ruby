def echo say
   say
end

def shout say
   say.upcase
end

def repeat (say, num = 2)
   ([say] * num).join(" ")
end

def start_of_word(say, num)
   say[0...num]
end

def first_word say
   say.split(" ").first
end

def titleize say
   words = say.split.map do |word|
      if %w(the and over).include?(word)
         word
      else
         word.capitalize
      end
   end
   words.first.capitalize!
   words.join(" ")
end
