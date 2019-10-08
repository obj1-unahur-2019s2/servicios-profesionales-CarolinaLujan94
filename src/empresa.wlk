class Empresa {
	var property profesionalesContratados = #{}
	var property honorariosSugeridos
	
	method cuantos(universidad) {
		return profesionalesContratados.count { p => p.universidad() == universidad } 
		}

	method profesionalesCaros() { 
		return profesionalesContratados.filter { p => p.honorariosPorHora() > honorariosSugeridos }
	}
	
	method universidadesFormadoras() { 
		return profesionalesContratados.map { p => p.universidad().asSet() }
	} 
	
	method profesionalesBaratos() { 
		return profesionalesContratados.min({ p => p.honorariosPorHora()}) 
	}
	
	method provinciasDondePuedeTrabajar() { 
		
	}
	
	method esDeGenteAcotada() { 
		return profesionalesContratados.all({ p => p.provinciasDondePuedeTrabajar().size() <= 3 })
	}

}