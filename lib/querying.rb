def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year FROM books INNER JOIN series ON series.id = books.series_id WHERE series.id = 1 ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON authors.id = series.author_id INNER JOIN subgenres ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title FROM series INNER JOIN characters ON series.id = characters.series_id WHERE characters.species = 'human' GROUP BY characters.series_id ORDER BY COUNT(characters.series_id) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(books.id) FROM characters INNER JOIN character_books ON characters.id = character_books.character_id INNER JOIN books ON books.id = character_books.book_id GROUP BY characters.name ORDER BY COUNT(books.id) DESC"
end
