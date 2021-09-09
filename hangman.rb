=begin
Write a program hangman.rb that contains a function called hangman.  
The function's parameters are a word and an array of letters.  
It returns a string showing the letters that have been guessed.  
Call the function from within your program so that you know that it works.
=end

def hangman(w, guess)

    word = w.downcase.split(//)  #Converts w to downcase word array
    guessed_letters = []
    hangman = []
    guessed_letters << guess

    word.each do |i|
        if i == guess
        hangman << guess 
        else 
            hangman << "_"
        end
    end
    
    puts hangman.join.inspect 
    puts "Guessed Letters : #{guessed_letters.flatten}"
    puts 
   
end    

hangman("Bob", "b")
hangman("Alphabet", ["a", "h"])

