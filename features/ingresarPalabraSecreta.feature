Feature: Ingresar Palabra Secreta
    como: administrador
    quiero: ingresar palabras
    para: poder iniciar el juego
    
    Scenario: Ingresar palabra secreta
        Given visito la pagina principal
        When ingreso la palabra "manzana" en el campo "palabraSecreta"
         And presionar el boton "Jugar"
        Then deberia ver un mensaje "El Ahorcado"
        
 