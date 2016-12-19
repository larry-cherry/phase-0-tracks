require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("dogs.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    breed VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)

def create_dog(db, name, breed, age)
  db.execute("INSERT INTO dogs (name, breed, age) VALUES (?, ?, ?)", [name, breed, age])
end

#create_dog(db, "Dex", "German ShortHaired Pointer", 2)

def remove_dog(db, id)
	db.execute("DELETE FROM dogs Where id=#{id}")
end

#remove_dog(db, 1)

def check_table(db)
	db.execute("SELECT * FROM dogs")
end

def select_dog(db, id)
	puts db.execute("SELECT * FROM dogs WHERE id=#{id}")
end
#select_dog(db, 1)
#dogs = db.execute("SELECT * FROM dogs")

#User iterface below
puts "Welcome to the dog factory!"
puts "Please enter one of the following values ..."

loop do 
puts " "
puts "'a' -- To Create a Dog, 'b' --- to remove a dog, 'c' --- to view current list of dogs, or type 'quit' to exit"
	command = gets.chomp.to_s
	break if command == 'quit'
		if command == "a"
			puts "please enter the name of your dog"
			name = gets.chomp.to_s
			puts "Please enter your dog breed"
			breed = gets.chomp
			puts "Please enter your dog age"
			age = gets.chomp
			create_dog(db, name, breed, age)
			p "Created your dog #{name}, Breed #{breed}, Age #{age}"
		end	

		if command == "b"
			puts "Enter the dog 'id' to remove them from the list"
			dog_id = gets.chomp
			puts "The following dog was removed from the list"
			select_dog(db, dog_id)
			remove_dog(db, dog_id)
		end

		if command == "c"
			puts "Current List of Dogs Created"
				db.execute("SELECT * FROM dogs").each do |x|
					puts x
				end
		end
end
