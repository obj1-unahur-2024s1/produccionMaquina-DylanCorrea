object registroProduccion {
	const registroDePiezas = []
	
	method agregarPiezasAlRegistro(cantPiezas){
		registroDePiezas.add(cantPiezas)
	}
	method quitarPiezasDelRegistro(cantPiezas){
		registroDePiezas.remove(cantPiezas)
	}
	method algunDiaSeProdujo(cantidad){
		return registroDePiezas.contains(cantidad)
	}
	method maximoValorDeProduccion(){
		return registroDePiezas.max()
	}
	method valoresDeProduccionPares(){
		return registroDePiezas.filter({n => n.even()})
	}
	method produccionEsAcotada(n1,n2){
		return registroDePiezas.all({r => r.between(n1,n2)})
	}
	method produccionesSuperioresA(cuanto){
		return registroDePiezas.filter({r => r > cuanto})
	}
	method produccionesSumando(n){
		registroDePiezas.map({r => r + n})
	}
	method totalProduciodo(){
		return registroDePiezas.sum()
	}
	method ultimoValoDeProduccion(){
		return registroDePiezas.last()
	}
	method primerValorDeProduccion(){
		return registroDePiezas.first()
	}
	method cantidadProduccionesMayorALaPrimera(){
		return registroDePiezas.count({ r => r > self.primerValorDeProduccion()})
		
	}
}
