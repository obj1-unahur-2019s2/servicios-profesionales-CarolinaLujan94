class Persona { 
	var property provincia
	
	method provinciaDondeEsta(profesional) { 
		return profesional.provinciasDondePuedeTrabajar().any({ p => p.provincia() })   
 	}
}

class Institucion { 
	var property universidadesReconocidas

	method puedeSerAtendido(profesional) { 
		return universidadesReconocidas.any({ u => u == profesional.universidad()})
	}
}

