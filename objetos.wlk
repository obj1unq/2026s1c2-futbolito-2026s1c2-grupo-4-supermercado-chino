/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	

	method taquito() {
		if(pelota.position()== position){
			pelota.paseParaAtras()
		}
	}

	
	method levantarla() {
		if(pelota.position()== position){
			pelota.subirPelota()
			pelota.caePelota()
		}
	}



	
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	


	method paseParaAtras() {
		position = game.at(0.max(position.x() - 2), position.y()) 
	}

	method subirPelota() {
		position = position.up(1)
	}

	method caePelota() {
		game.schedule(2000, { position = position.down(1)})

	}
	
	
}
