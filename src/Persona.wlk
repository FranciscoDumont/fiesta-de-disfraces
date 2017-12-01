class Persona{
	var personalidad
	var disfraz
	var fiesta
	
	constructor (unaPersonalidad,unDisfraz,unaFiesta){
		personalidad = unaPersonalidad
		disfraz = unDisfraz
		fiesta = unaFiesta
	}
	
	method estaConforme(){
		return self.puntaje()>10
	}
	
	method estaDisconforme(){
		return !self.estaConforme()
	}
	
	method puntaje(){
		return disfraz.puntaje(self,fiesta)
	}
	
	method cambiarDrisfrazCon(otraPersona){
		if(self.puedeCambiarTrajeCon(otraPersona)){
			self.cambiarTrajeSinPreguntarCon(otraPersona)	
			if(self.estaDisconforme() || otraPersona.estaDisconforme() ){
				self.cambiarTrajeSinPreguntarCon(otraPersona)
			}
		}
	}
	
	method puedeCambiarTrajeCon(otraPersona){
		return otraPersona.fiesta()==fiesta && otraPersona.estaDisconforme()
	}
	
	method cambiarTrajeSinPreguntarCon(otraPersona){
		var otroDisfraz = otraPersona.disfraz()
		otraPersona.disfraz(disfraz)
		self.disfraz(otroDisfraz)
	}
	
	method disfraz(unDisfraz){
		disfraz = unDisfraz
	}
	
}

object alegre{
	method esSexy(persona) = false
}

object taciturno{
	method esSexy(persona){
		return persona.edad()<30
	}
}

class Caprichoso inherits Persona{
	override method estaConforme(){
		return super() && disfraz.nombre().size().even()
	}
	
}

class Pretencioso inherits Persona{
	override method estaConforme(){
		return (new Date() - disfraz.confeccion()) < 30
	}
	
}

class Numerologo inherits Persona{
	var cifraCabala
	
	constructor (unaPersonalidad,unDisfraz,unaFiesta,unaCifraCabala)=super(unaPersonalidad,unDisfraz,unaFiesta){
		cifraCabala = unaCifraCabala
	}
	
	override method estaConforme(){
		return super() && self.puntaje()>cifraCabala 
	}
	
}

