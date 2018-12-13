Feature: Actualizar palabra secreta
    como: usuario
    quiero: ingresar la letra
    para: adivinar la palabra
    
    Scenario: Actualizar palabra secreta
        Given estoy pagina del juego
        When ingreso la palabra "a" en el campo "letra"
         And presionar el boton "Adivinar"
        Then deberia ver estado "_ a _ a _ a"
