object persona { 
	var provincia 
	
	method provinciaDondeEsta(prov) { provincia = prov }
}

object institucion { 
	var universidad = []

	method atendidaPorProfesionales() { return universidad.any { p => p.cuantosProfesionalesEstuaronEn()} }
}

