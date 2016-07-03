defmodule Pyglatin do
  # A function for performing pyglatin
  def get_word do
    # Grab word to transform
    IO.gets "Enter a word "
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

  def single_conversion do
    # Convert word
    word = get_word
    letter = String.first word
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
end

Pyglatin.single_conversion
