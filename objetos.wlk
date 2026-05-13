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
	
	method patearla() {
		pelota.moverPelotaDespuesDeSerPateada()
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

    method moverPelotaDespuesDeSerPateada() {
		if (self.esPosicionOptima()) {
			self.moverPelotaDespuesDeSerPateadaMejorCaso()
		} else {

		}
	}

	method esPosicionOptima() {
		return self.position() 
	}

	method moverPelotaDespuesDeSerPateadaMejorCaso() {
		position = game.at(self.position().x() + 3 , 5)
	}

	method position() {
		return position
	}
}
