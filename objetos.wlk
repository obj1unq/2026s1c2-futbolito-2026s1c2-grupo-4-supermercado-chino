/** First Wollok example */
import wollok.game.*
import esTitular.*

object lionel {

	var titularidad = titular

	var property position = game.at(3,5)
	
	method image() {
		return titularidad.image()
	}
	method cambiarCamiseta(){
		if (position.x()==0){
			titularidad = titularidad.siguiente()
		} else {
			game.say(self, "No estoy en el lugar adecuado")
		}
	}
	method irAPelota(){
		var nuevaPosicion = pelota.position()
		position = nuevaPosicion
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)
	method volverAPosicionInicial(){
		var nuevaPosicion = game.at(0,5)
		position = nuevaPosicion
	}	
}
