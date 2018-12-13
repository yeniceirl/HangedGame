Feature: Mostrar palabra secreta en lineas
    como: usuario
    quiero: ver la cantidad de letras con lineas
    para: comenzar a adivinar
    
    Scenario: Mostrar palabra secreta en lineas
        Given estoy pagina del juego
        Then deberia ver estado "_ _ _ _ _ _"