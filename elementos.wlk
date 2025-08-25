object castillo{
	var defensa=150
	method altura()=20
	method recibirAtaque(potencia){
		defensa=(defensa-potencia).max(0)
	}
	method recibirTrabajo(){
		defensa= (defensa + 20).min(200)
	}
	method valor(){
		return defensa*0.2
	}
}

object aurora{
	var vida=true
	method altura()=1
	method estaViva()= vida
	method recibirAtaque(potencia){
		if (potencia >=10){
			vida=false
		}
	}
	method recibirTrabajo(){}
	method valor()=15
}

object tipa{
	var altura=8
	method recibirTrabajo(){
		altura=altura+1
	}
	method altura()=altura
	method recibirAtaque(potencia){}
	method valor(){
		return altura*2
	}
}

object ningunElemento{
	method altura()=0
	method recibirAtaque(potencia){}
	method valor()=0
}