class Fiesta{
	var lugar
	var fecha
	var invitados
	
	method esUnBodrio(){
		invitados.all({invitado=> invitado.estaDisconforme() })
	}
	
	method mejorDisfraz(){
		return invitados.max({invitado=>invitado.puntaje()})
	}
	
	method ingresar(unaPersona){
		invitados.add(unaPersona)
	}
	
}

object fiestaInolvidable inherits Fiesta{
	override method ingresar(unaPersona){
		if (unaPersona.esSexy() && unaPersona.estaConforme()){
			super(unaPersona)
		}
	}
}