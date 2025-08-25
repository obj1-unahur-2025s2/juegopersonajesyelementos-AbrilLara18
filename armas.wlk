object ballesta{
	var flecha=10
	method estaCargada(){
		return flecha >0
	}
	method usar(){
		flecha=flecha-1
	}
	method potencia()=4
	
}

object jabalina{
	var cargada=true
	method usar(){
		cargada=false
	}
	method estaCargada() = cargada
	method potencia()=30
}
