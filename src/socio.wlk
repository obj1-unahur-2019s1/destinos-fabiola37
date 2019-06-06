class Socio {
	var property actividades = []
	var property maximoActividades = 0
	var property edad = 18
	var property idiomasQueHabla = []
	
	method esAdoradorDelSol(){
		return actividades.all({act => act.sirveParaBroncearse()})
	}
	method actividadesEsforzadas(){
		return actividades.filter({act => act.implicaEsfuerzo()})
	}
	method realizarActividad(actividad){
		return if(maximoActividades <= actividades.size()){ actividades.add(actividad)}
					else{self.error("actividades superadas")}
	}
	method realizarActividad()
	

	method leatrae(actividad){
	return idiomasQueHabla.asSet().intersection(actividad.idiomas().asSet()).size() > 0
	}
}	