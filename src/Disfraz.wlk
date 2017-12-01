class Disfraz{
	var nombre
	var confeccion
	var caracteristicas = #{}
		
	method puntaje(persona,fiesta){
		return caracteristicas.sum({caracteristica => caracteristica.puntuacion(persona,fiesta)})
	}
	
}

class Gracioso{
	var nivelGracia
	
	method puntuacion(persona,fiesta){
		if (persona.mayorA(50)){
			return nivelGracia*3
		}else return nivelGracia
	} 
}

class Tobara {
	var fechaDeCompra 
	method puntuacion(persona,fiesta){
		if (fiesta.fecha() - fechaDeCompra>=2){
			return 5
		}else return 3
		
	}
}

class Careta {
	var personaje
	method puntuacion(persona,fiesta) {
		return personaje.valor()
	}
}

object mickeyMouse {
	method valor() = 8
}

object osoCarolina{
	method valor() = 6
}

class Sexy{
	method puntuacion(persona, fiesta) {
		if (persona.esSexy()){
			return 15
		}
		else return 2
	}
}