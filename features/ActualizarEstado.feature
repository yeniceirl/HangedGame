Feature: Actualizar Estado
    como: Usuario
    quiero: visualizar el estado actual del juego
    para: conocer el avance de la partida
    
    Scenario: Actualizar estado
        Given estoy pagina del juego
        When ingreso la palabra "e" en el campo "letra"
        And presionar el boton "Adivinar" 
        Then deberia ver estado "Errores: 1"
          And deberia ver estado "Restantes: 5"