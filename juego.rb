def warning(i=ARGV.length)
    if i != 0
        puts "TIP: No es necesario ingresar ningún argumento.\n\n"
        puts "Inténtalo de nuevo."
        exit
    end
end

def bienvenida(play_num)
    [
        "Turno jugador #{["uno", "dos"][play_num - 1]}: ",
        "------------------",
        "1. Piedra",
        "2. Papel",
        "3. Tijera",
        "4. Salir"
    ].each do |linea|
        puts linea
    end
    print "\nIngresa una opción: "
end

def get_input(play_num)
    player_input = gets.chomp
    opt = ["1", "2", "3", "4"]
    while opt.index(player_input) == nil do
        puts "\n| Opción no válida X |\n\n"
        bienvenida(play_num)
        player_input = gets.chomp
    end
    if player_input == "4"
        puts "\nGAME OVER"
        exit
    else
        pick = player_input.to_i - 1
        ppt = ["piedra", "papel", "tijera"]
        puts "\n- Jugador #{["uno", "dos"][play_num - 1]} elegió #{ppt[pick]}...\n\n"
        return pick.to_s
    end
end

def play(player1, player2)
    sleep(1)
    ppt = ["piedra", "papel", "tijera"]
    puts "!!! J1 (#{ppt[player1.to_i]}) v/s J2 (#{ppt[player2.to_i]}) !!!\n\n"
    sleep(1)
    if player1 == player2
        puts "Empate.\n\n"
    else
        result = player1 + player2
        ["02", "10", "21"].include?(result) ? (puts "¡Gana el jugador uno!") : (puts "¡Gana el jugador 2!")
    end
end

#Comienzo del juego
warning
bienvenida(1)
input1 = get_input(1)
sleep(1)
bienvenida(2)
input2 = get_input(2)
play(input1, input2)









