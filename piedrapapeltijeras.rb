#Piedra papel o tijeras, avanzado;)

print "Turno del jugador 1, escoge una opción: \n"
print "1. Piedra \n 2. Papel \n 3. Tijeras \n 4. Salir\n"
player1 = gets.chomp.to_i

while(player1 == 0 || player1 >= 5 && player1 != 4)
    print "Opciòn invalida, intentalo nuevamente. \n"
    print "Turno del jugador 1, escoge una opción: \n"
    print "1. Piedra \n 2. Papel \n 3. Tijeras \n 4. Salir\n"
    player1 = gets.chomp.to_i
end

if player1 != 4
    print "Turno del jugador 2, escoge una opción: \n"
    print "1. Piedra \n 2. Papel \n 3. Tijeras \n 4. Salir\n"
    player2 = gets.chomp.to_i

    while(player1 != 4 && player2 == 0 || player2 > 4)
        print "Opciòn invalida, intentalo nuevamente. \n"
        print "Turno del jugador 2, escoge una opción: \n"
        print "1. Piedra \n 2. Papel \n 3. Tijeras \n 4. Salir\n"
        player2 = gets.chomp.to_i
    end

end

# piedra = 1
# papel = 2
# tijera = 3
date = [nil, "piedra", "papel", "tijera"]

case player1
  when 1 
    print "Ganó el jugador 1 con #{date[player1]}\nEl jugador 2, perdió con #{date[player2]}" if player2 == 3
    print "Ganó el jugador 2 con #{date[player2]}\nEl jugador 1 perdió con #{date[player1]}" if player2 == 2
    print "Empate" if player1 == player2 
  when 2 
    print "Ganó el jugador 1 con #{date[player1]}\nEl jugador 2, perdió con #{date[player2]}" if player2 == 1
    print "Ganó el jugador 2 con #{date[player2]}\nEl jugador 1 perdió con #{date[player1]}" if player2 == 3 
    print "Empate" if player1 == player2 
  when 3 
    print "Ganó el jugador 1 con #{date[player1]}\nEl jugador 2, perdió con #{date[player2]}" if player2 == 2
    print "Ganó el jugador 2 con #{date[player2]}\nEl jugador 1 perdió con #{date[player1]}" if player2 == 1
    print "Empate" if player2 == player1 
  end
