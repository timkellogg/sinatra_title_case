# This is a method used on a string that will apply title case to said string.
# Authors: Julianna Green and Andrew Brennwald
# Date: 8/3/2015

class String
  define_method(:title_case) do
    shorties = ["of", "the"]       # Declaring exceptions to capitalization
    old_title = self.split()

    new_title = []                  # An empty array tp hold our new result
    old_title.each() do |bob|       # A block that capitalizes everything but our exceptions as desired
      if shorties.include?(bob)
        new_word = bob.downcase()
      else
        new_word = bob.capitalize()
      end
      new_title.push(new_word)      # Pushed the conditional results into new array
    end
    new_title[0].capitalize!()      # Capitalizes the first word of the array
    new_title.join(" ")             # Join array into one string
  end
end
