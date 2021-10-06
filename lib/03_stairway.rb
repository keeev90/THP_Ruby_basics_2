# Méthode pour afficher le message de départ"
def start_text
  puts
  puts "⭐🌟⭐🌟⭐ WELCOME TO THE STAIRWAY GAME ⭐🌟⭐🌟⭐"
  puts
  puts "Imagine un escalier de 10 étages. Tu démarres à la marche 1. Parviens à monter au sommet de l'escalier !"
  puts " Pour cela, tu lanceras un 🎲 à chaque tour. Les tirages sont réalisés automatiquement, successivement et de manière aléatoire:"
  puts " 5️⃣  ou 6️⃣  : tu montes d'une marche"
  puts " 1️⃣  : tu descends d'une marche"
  puts " 2️⃣  ou 3️⃣  ou 4️⃣  : tu restes sur place"
  puts
  puts "tapez 'entrée' pour commencer à jouer"
  gets.chomp
  puts
end

#Méthode pour lancer le dé et afficher le résultat#
def throw_dice
  values_emoji = ["1️⃣","2️⃣","3️⃣","4️⃣","5️⃣","6️⃣"]
  dice_value = rand(6)+1
  puts "🎲#{values_emoji[dice_value-1]}"
  puts "> Tu as fait un #{dice_value} !"
  return dice_value
end

#Méthode pour définir l'impact du lancé de dé et afficher le résultat#
def move(dice_value)
  if dice_value == 5 || dice_value == 6 # si le dé fait 5 ou 6
    puts ">> Tu montes une marche 🔼"
    step = 1
  elsif dice_value == 1 # si le dé fait 1
    puts ">> Tu descends d'une marche 🔽"
    step = -1
  else # si le dé fait 2, 3, ou 4 
    puts ">> Il ne se passe rien ⏸️"
    step = 0
  end
end

#méthode pour calculer et afficher la position à chaque tour et compter le nombre de tours effectués jusqu'à la fin de la boucle#
def game
  position = 1
  turns_counter = 0
    while position != 10
      dice_value = throw_dice
      step = move(dice_value)
      position = position + step
      if position <= 0                      # pour ne pas pouvoir aller au sous-sol
        position = 1
        puts "TU NE PEUX PAS DESCENDRE PLUS BAS !"
      end
      puts ">>> TU ES SUR LA MARCHE #{position}"
      puts "tapez 'entrée' pour continuer à jouer"
      gets.chomp
      puts
      turns_counter += 1                    # compteur de tours
    end

    if turns_counter <= 30 
      puts "⭐⭐⭐ BINGO ⭐⭐⭐ Il a fallu seulement #{turns_counter} tours pour monter les escaliers. Tu es un sacré chanceux !" # affichage final compteur de tours
      puts
    else
      puts "⭐⭐⭐ BINGO ⭐⭐⭐ Il a fallu #{turns_counter} tours pour monter les escaliers. Pas ouf, retente ta chance." # affichage final compteur de tours
      puts
    end
    return turns_counter
end

#mega-methode pour enchainer l'ensemble des méthodes"
def perform
  start_text
  dice_value = throw_dice
  move(dice_value)
  game
end
perform
