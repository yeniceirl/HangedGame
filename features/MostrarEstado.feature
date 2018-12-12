Feature: Mostrar estado inicial
    como: Usuario
    quiero: saber la cantidad de posibilidades y errores
    para: tener control del juego
    
    Scenario: Mostrar estado
        Given estoy pagina del juego
        Then deberia ver estado "Errores: 0"
          And deberia ver estado "Restantes: 6"