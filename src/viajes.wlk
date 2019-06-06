class Viaje {
	var property idiomas = []
	
	method esInteresante(){ return idiomas.size()>= 2 
	}
	
}
class ViajeDePlaya inherits Viaje{
	var property largo = 0
	
	method sirveParaBrocearse(){return true
	}
	method cuantosDiasLleva(){return largo /500
	}
	method implicaEsfuerzo(){ return (largo > 1200)
	}
	
}
class ExcursionAciudad inherits Viaje{
	var property cantidadDeAtracciones = 0
	
	method sirveParaBrocearse(){ return false
	}
	method cuantosDiasLleva(){return cantidadDeAtracciones / 2
	}
	method implicaEsfuerzo(){ return (cantidadDeAtracciones.between(5,8))
	}
	override method esInteresante(){ return super() or cantidadDeAtracciones == 5}

} 
class ExcursionAciudadTropical inherits ExcursionAciudad {
	
	override method sirveParaBrocearse(){ return true
	}
	override method cuantosDiasLleva(){return super() + 1 
	}
	
} 
class SalidaDeTrekking inherits Viaje{
	var property diasDeSolXAnio
	var property kilometros
	
	/*
	 * sirve para broncearse si en el lugar hay mas de 200 dias de sol por anio
	 * o hay entre 100 y 200 y se recorre mas 120 km
	 */
	method sirveParaBrocearse(){
		return (diasDeSolXAnio > 200) or (diasDeSolXAnio.between(100, 200) and kilometros > 120)
	}
	method cuantosDiasLleva(){return kilometros / 50
	}
	method implicaEsfuerzo(){ return kilometros < 80
	}
	override method esInteresante(){ return super() and diasDeSolXAnio > 140 
	}
}
class ClaseDeGimnasia {
	const property idiomas = ["español"]
	
	method sirveParaBrocearse(){ return true
	}
	method cuantosDiasLleva(){return 1
	}
	method implicaEsfuerzo(){ return true
	}
	
}