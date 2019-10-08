// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{ universidad.provincia() } }
	method honorariosPorHora() = universidad.honorariosRecomendados()
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property provinciaDondePuedeTrabajar
	var property honorarioPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar(provincia) { provinciaDondePuedeTrabajar = provincia }
	method honorariosPorHora(honorarios) { honorarioPorHora = honorarios }

}




