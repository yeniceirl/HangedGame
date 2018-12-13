Feature: Actualizar Estado
    como: Usuario
    quiero: visualizar el estado actual del juego
    para: conocer el avance de la partida
    
    Scenario: Actualiza estado
        Given estoy pagina del juego
        Then deberia ver estado "Errores: 1"
          And deberia ver estado "Restantes: 5"