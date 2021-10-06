#pyramide bancale
def half_pyramid
  puts "Salut, bienvenue dans ma (presque) super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  nb_floors = gets.chomp.to_i
  puts "Voici la pyramide :"
  nb_floors.times do |i|
      spaces_nb = nb_floors - (i + 1)
      sharp_nb = i + 1
      puts " " * spaces_nb + "#" * sharp_nb
  end
end
half_pyramid

#pyramide stable
def full_pyramid
  puts "Salut, bienvenue dans ma vraiment super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  nb_floors = gets.chomp.to_i
  puts "Voici la pyramide :"
  nb_floors.times do |i|
      spaces_nb = nb_floors - (i + 1)
      sharp_nb = (i * 2) + 1
      puts " " * spaces_nb + "#" * sharp_nb
  end
end
full_pyramid

#pyramide bancale mais révolutionnaire
def ask_nb_floors
  puts "Salut, bienvenue dans ma pyramide losange ! Combien d'étages veux-tu (nombre impair uniquement) ?"
  print "> "
  while true do
    nb_floors = gets.chomp.to_s
    if nb_floors.to_i.odd? # si nbre impair
      puts "Voilà ta pyramide :"
      return nb_floors.to_i
    elsif nb_floors.empty? # si pas de réponse
      puts "Allez ne sois pas timide, dis moi un petit nombre impair."
      print "> "
    elsif nb_floors == "0" || nb_floors.to_i <= -1 # si inférieur ou égal à 0
      puts "Une pyramide avec aucun étage ou sous terre, je ne sais pas faire. Dis moi un nombre impair et positif uniquement !"
      print "> "
    elsif nb_floors.to_i.even?
      puts "Nombre impair uniquement !"
      print "> "
    end
  end
end

def wtf_pyramid(nb_floors)
  #top + middle part
  ((nb_floors/2)+1).times do |i|
    print " " * ((nb_floors/2)-i)
    print "#" * (i*2+1)
    puts " " * ((nb_floors/2)-i) + "   <- #{nb_floors-i}"
  end
  #bottom part
  (nb_floors/2).times do |i|
    print " " * (i+1)
    print "#" * (nb_floors-((i+1)*2))
    puts " " * (i+1) + "   <- #{(nb_floors/2-i)}"
  end
end

def perform
  nb_floors = ask_nb_floors
  wtf_pyramid(nb_floors)
end
perform

