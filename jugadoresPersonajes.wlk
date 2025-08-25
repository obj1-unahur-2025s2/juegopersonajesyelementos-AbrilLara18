import elementos.*
import armas.*

object luisa{
	var personaje= floki
	method seleccionarPersonaje(nuevoPersonaje){
		personaje= nuevoPersonaje
	}
	method aparece(elemento){
		personaje.encontrar(elemento)
	}
}

object floki{
	var arma= ballesta
	method equiparArma(armaNueva){
		arma=armaNueva
	}
	method encontrar(elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}

object mario{
	var valor=0
	var ultimoElemento=ningunElemento
	method encontrar(elemento){
		elemento.recibirTrabajo()
		valor+=elemento.valor()
		ultimoElemento=elemento
	}
	method esFeliz(){
		return valor >=50 || ultimoElemento.altura() >=10
	}
}