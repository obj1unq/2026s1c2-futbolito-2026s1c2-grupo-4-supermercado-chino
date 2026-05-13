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



	
	
	
	method patearla() {
		if (position == pelota.position()) {
		pelota.moverPelotaDespuesDeSerPateada()
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
	
	

	



    method moverPelotaDespuesDeSerPateada() {
		if (self.esPosicionOptima()) {
			self.moverPelotaDespuesDeSerPateadaMejorCaso()
		} else {
			self.moverPelotaDespuesDeSerPateadaPeoresCasos()
		}
	}

	method esPosicionOptima() {
		return position.x() <= game.at(game.width() -4 , position.y()).x()
	}

	method moverPelotaDespuesDeSerPateadaMejorCaso() {
		position = game.at(position.x() + 3 , position.y())
	}

	method moverPelotaDespuesDeSerPateadaPeoresCasos() {
		if (position.x() <= game.at(game.width() - 3 , position.y()).x()) {
		self.moverPelotaDespuesDeSerPateadaPeorCaso2()
		} else if (position.x() <= game.at(game.width() - 2 , position.y()).x()) {
			self.moverPelotaDespuesDeSerPateadaPeorCaso1()
		}
	}
	method moverPelotaDespuesDeSerPateadaPeorCaso2() {
		position = game.at(position.x() + 2 , position.y())
	}

	method moverPelotaDespuesDeSerPateadaPeorCaso1() {
		position = game.at(position.x() + 1 , position.y())
	}

}
