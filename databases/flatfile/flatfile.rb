require 'sqlite3'

db = SQLite3::Database.new("flatfile.db")
# db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS collection(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    drawer INT,
    artist INT,
    FOREIGN KEY (artist) REFERENCES artists(id),
    FOREIGN KEY (drawer) REFERENCES drawer(id)
    );

  	CREATE TABLE IF NOT EXISTS artists(
  	  id INTEGER PRIMARY KEY,
  	  first VARCHAR(255),
  	  last VARCHAR(255)	
  	);

  	CREATE TABLE IF NOT EXISTS drawers(
  	  id INTEGER PRIMARY KEY,
  	  name VARCHAR(255)
  	);
SQL

db.execute_batch(create_table_cmd)


loop do
	puts ""
	puts ""
	puts ""
	puts ""
	puts ""
	puts ""
	puts " FLAT FILE ORGANIZER v1.0"
	puts "" 
	puts ".=======================."
	puts "|---=== DRAWER 01 ===---|"
	puts "|---=== DRAWER 02 ===---|"
	puts "|---=== DRAWER 03 ===---|"
	puts "|---=== DRAWER 04 ===---|"
	puts "|---=== DRAWER 05 ===---|"
	puts ".=======================."
	puts ""
	puts "What would you like to do?"
	puts ""
	puts "'VIEW ARTISTS' - View entire artist list by ID"
	puts "'ADD' - Add to collection"
	puts "'REMOVE' - Remove from collection"
	puts "'MOVE' - Move a print from one drawer to another"
	puts "'NEW ARTIST' - Add a new artist to the database"
	puts "'VIEW' - View collection by drawer"
	puts "'VIEW ALL' - View entire flat file"
	puts "'EXIT' Exit the FLAT FILE ORGANIZER"
	puts ""
	puts ""
	puts ""
	puts ""
	puts ""

# p db.execute("SELECT * FROM artists")

	user_action = gets.chomp.downcase

	if user_action == "exit"
		exit_quote = ["Nice collection!", "F*** Tim Doyle.", "When are you getting a Watterson?"]
		puts ""
		puts ""
		puts "---=== Thanks for using FLAT FILE ORGANIZER v1.0 ===---"
		p exit_quote.sample
		break
		
	elsif user_action == "add"
		# artist_list = db.execute("SELECT * FROM artists;")
		# p artist_list
		# puts "Please enter the artist's FIRST name:"
		# artist_first = gets.chomp
		# puts "Please enter the artist's LAST name:"
		# artist_last = gets.chomp
		# artist_full_name = [artist_first, artist_last]
		#
		# So now I have a full name array like ["Tyler", "Stout"] and an array of the 
		# artist list like [[1, "Tyler", "Stout"], [2, "Shepard", "Fairey"]]
		#
		# How can I see if full_name[0,1] == artist_list @ 1 & 2 of any entry?
		# 
		#
		# I'm tired.  I'll do this tomorrow.
		# Something like....
		#
		#   
		#
		#
		#
		# db.execute("INSERT INTO artists (first, last) VALUES (?, ?)", [artist_first, artist_last]

		puts "Please enter the name of the print to be added:"
		new_print = gets.chomp
		puts ""
		puts "Please enter the artist ID"
		artist_id = gets.chomp
		puts ""
		puts "Which drawer would you like to place #{new_print} in?"
		drawer_location = gets.chomp
		db.execute("INSERT INTO collection (name, drawer, artist) VALUES (?, ?, ?)", [new_print, drawer_location, artist_id])
		# db.execute("INSERT INTO artists (first, last) VALUES"

	elsif user_action == "new artist"
		puts ""
		puts "Please enter the new artist's FIRST name:"
		first_name = gets.chomp
		puts ""
		puts "Please enter the new artist's LAST name:"
		last_name = gets.chomp
		if first_name == "Tim" && last_name == "Doyle"			
			puts ""
			puts ""
			puts "."
			puts "."
			puts "."
			puts "."
			puts ". . . yeah, nah."
			break
		end
		db.execute("INSERT INTO artists (first, last) VALUES (?, ?)", [first_name, last_name])
		updated_list = db.execute("SELECT * FROM artists")
		updated_list.each do |id, first, last|
			puts ""
			puts "ID - #{id} = #{first} #{last}"
			puts ""
		end

	elsif user_action == "view"
		puts ""
		puts "Which drawer would you like to view?"
		drawer_choice = gets.chomp.to_i
		# drawer_viewer = db.execute ("SELECT * FROM collection JOIN artists ON collection.artist = artists.last;", [drawer_choice])
		# p drawer_viewer
		# drawer_viewer = db.execute("SELECT * FROM collection WHERE drawer = ?", [drawer_choice]) 
		drawer_viewer = db.execute ("SELECT * FROM collection JOIN artists ON collection.artist = artists.id WHERE drawer = ?;"),[drawer_choice]
		drawer_viewer.each do |a, b, c, d, e, f, g|
			puts ""
			puts "#{b.upcase} by #{f.upcase} #{g.upcase}"
			puts "_________________________________"
				
			end

	elsif user_action == "view all"
		view_entire = db.execute ("SELECT * FROM collection JOIN artists ON collection.artist = artists.id ORDER BY drawer;")
		view_entire.each do |a, b, c, d, e, f, g|		
			puts ""
			puts "#{b.upcase} by #{f.upcase} #{g.upcase} is located in drawer #{c}."
			puts "_________________________________"
				
			end

	elsif user_action == "remove"
		puts ""
		puts "Which print would you like to remove?"
		for_removal = gets.chomp
		db.execute("DELETE FROM collection WHERE name = ?", [for_removal])
		puts "#{for_removal} has been removed."
			

	elsif user_action == "move"
		puts ""
		puts "Enter the name of the print you like to move:"
		print_to_move = gets.chomp
		puts ""
		puts "Which drawer would you like to move the print to?"
		new_location = gets.chomp.to_i
		db.execute("UPDATE collection SET drawer = ? WHERE name = ?", [new_location, print_to_move])
		puts ""
		puts "__________________________________________________________________"
		puts ""
		puts "#{print_to_move.upcase} has been moved to drawer number #{new_location}."
		puts ""

	elsif user_action == "view artists"
		all_artists = db.execute("SELECT * FROM artists")
		puts ""
		all_artists.each do |id, first, last|
			puts "ID - #{id} = #{first} #{last}"
			puts ""
		end






	else 
		puts "_________________________________"
		puts ""
		puts "ERROR!! Command not found."
		puts ""
		puts "Please select an available action."
		puts ""
		puts "_________________________________"
	end

end


