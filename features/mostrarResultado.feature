Feature: Mostrar Resultado
    como: usuario
    quiero: poder ver el resultado de la partida
    para: saber si gane o perdi el juego
    
    Scenario: Usuario Ganador
        Given estoy pagina del juego
        When completo la palabraSecreta "banana"
        Then deberia mostrar el mensaje "Victoria"
        
    Scenario: Usuario Perdedor
        Given estoy pagina del juego
        When completo la palabraSecreta "lkjkkk"
        Then deberia mostrar el mensaje "Perdiste"