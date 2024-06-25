def get_player_choice
    puts "Elige: piedra, papel o tijera"
    player_choice = gets.chomp.downcase
    until ["piedra", "papel", "tijera"].include?(player_choice)
    puts "Opción inválida. Intenta de nuevo."
    player_choice = gets.chomp.downcase
    end
    player_choice
    end
    
    def get_computer_choice
    ["piedra", "papel", "tijera"].sample
    end
    
    def determine_winner(player_choice, computer_choice)
    if player_choice == computer_choice
    "Empate"
    elsif (player_choice == "piedra" && computer_choice == "tijera") ||
    (player_choice == "papel" && computer_choice == "piedra") ||
    (player_choice == "tijera" && computer_choice == "papel")
    "Ganaste"
    else
    "Perdiste"
    end
    end
    
    def play_game
    player_choice = get_player_choice
    computer_choice = get_computer_choice
    puts "Tú elegiste: #{player_choice}"
    puts "La computadora eligió: #{computer_choice}"
    result = determine_winner(player_choice, computer_choice)
    puts "¡#{result}!"
    end
    
    puts "¡Bienvenido al juego Piedra, Papel, Tijera!"
    play_game
    
    while true
    puts "¿Quieres jugar de nuevo? (s/n)"
    choice = gets.chomp.downcase
    break if choice != "s"
    play_game
    end
    
    puts "¡Gracias por jugar!"