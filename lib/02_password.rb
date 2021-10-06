def signup
  puts "Saisissez votre nouveau mot de passe."
  print "> "
  password = gets.chomp.to_s
end

def login(password)
  puts "Saisissez votre mot de passe."
  print "> "
  input = gets.chomp.to_s
  if input == password
  else
      puts "Mot de passe incorrect !"
      login(password)
  end
end

def welcomescreen
  puts "Bienvenue dans votre espace secret."
end

def perform
  password = signup
  login(password)
  welcomescreen
end
perform