defmodule Pyglatin do
  # A function for performing pyglatin
  def get_word do
    # Grab word to transform
    IO.gets "Enter a word[s] "
  end

  def vowel(word) do
    ending = String.slice word, 1, String.length word
    IO.puts ending <> "say"
  end

  def consonant(word) do
    ending = String.slice word, 1, String.length word
    new_word = ending <> String.first word
    IO.puts new_word <> "ay"
  end

  def check_first_letter letter, word do
    # Check first letter if vowel or consonant
    case letter do
      "a" ->
        vowel word
      "e" ->
        vowel word
      "i" ->
        vowel word
      "o" ->
        vowel word
      "u" ->
        vowel word
       _  ->
        consonant word
    end
  end

  def single_conversion word do
    # Convert word
    letter = String.first word
    check_first_letter letter, word
  end

  def multiple_conversion words do
    Enum.map words, fn word ->
      single_conversion word
    end
  end
end

defmodule Start do
  # Start application
  def ask_route do
    response = IO.getn "Type 'y' for a single word or 'n' for multiple words "
    case response do
      "y" ->
        word = Pyglatin.get_word
        Pyglatin.single_conversion word
      "n" ->
        words = Pyglatin.get_word |> String.split
        Pyglatin.multiple_conversion words
       _  ->
        IO.puts "You did not type y or n."
        ask_route
    end
  end
end

Start.ask_route
