require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("tenants.db")
# db.results_as_hash = true

create_info_table = <<-SQL
  CREATE TABLE IF NOT EXISTS info(
    id INTEGER PRIMARY KEY,
    fam_name VARCHAR(50),
    move_in DATE,
    move_out DATE,
    FOREIGN KEY (fam_name) REFERENCES family(l_name)
    )
SQL

create_family_table = <<-SQL
  CREATE TABLE IF NOT EXISTS family(
    id INTEGER PRIMARY KEY,
    f_names VARCHAR(50),
    l_name VARCHAR(50),
    children BOOLEAN,
    pets BOOLEAN
    )
SQL

db.execute(create_info_table);
db.execute(create_family_table);

db.execute("INSERT INTO info (fam_name, move_in, move_out) VALUES ('Benson', '2016-7-23', '2016-7-31')")

db.execute("INSERT INTO family (f_names, l_name, children, pets) VALUES ('Eric and Tammy', 'Benson', 'TRUE', 'TRUE')")

# current_family = db.execute("SELECT * FROM info")
# puts current_family.class
# p current_family

puts "Welcome, young real estate mogul. Enter the last name of our new tenant/s."
last_name = gets.chomp
puts "Great, and what are their first names?"
first_names = gets.chomp
puts "And does #{first_names} #{last_name} have any children?"
  kiddos = gets.chomp
  if kiddos == 'yes'
    kids = 'TRUE'
  else
    kids = 'FALSE'
  end
puts "And are there pets?"
  furry_friends = gets.chomp
  if furry_friends == 'yes'
    animals = 'TRUE'
  else
    animals = 'FALSE'
  end

db.execute("INSERT INTO family (f_names, l_name, children, pets) VALUES ('#{first_names}', '#{last_name}', '#{kids}', '#{animals}')");

puts "Great! And when do the #{last_name}'s be moving in? (Enter in YYYY-MM-DD format)"
moving_in = gets.chomp
puts "Super-de-dooper. And when is their anticipated move-out date? (Stick with YYYY-MM-DD format, please)"
moving_out = gets.chomp

db.execute("INSERT INTO info (fam_name, move_in, move_out) VALUES ('#{last_name}', '#{moving_in}', '#{moving_out}')")