def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  from books
  join series
  on books.series_id = series.id
  where series.id = 1
  order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto 
  from characters
  order by length(characters.motto) 
  desc limit 1; "
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species) from characters
  group by species
  order by count(species) desc limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  from authors 
  join series 
  on authors.id= series.author_id
  join subgenres 
  on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  from series
  join authors
  on series.author_id = authors.id
  join characters
  on characters.author_id = authors.id
  group by characters.species
  order by count(characters.species) desc limit 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) as number_of_books_they_are_in
  from characters
  join character_books
  on characters.id = character_books.character_id
  group by characters.name
  order by number_of_books_they_are_in desc, characters.name"
end
