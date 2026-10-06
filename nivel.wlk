import personajes.*

class Nivel {

    method gano() = fuego.llegoAPuerta() && agua.llegoAPuerta()

    method perdio() = !fuego.vivo() || !agua.vivo()

}

object nivel1 inherits Nivel {
    
}