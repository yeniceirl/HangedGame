Feature: Mostrar Resultado
    como: usuario
    quiero: poder ver el resultado de la partida
    para: saber si gane o perdi el juego
    
    Scenario: Usuario Ganador
        Given estoy pagina del juego
        When completo la "palabraSecreta"
        Then deberia mostrar el mensaje "Victoria" y mostrar la palabra secreta