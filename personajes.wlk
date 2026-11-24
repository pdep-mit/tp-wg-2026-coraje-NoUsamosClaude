import wollok.game.*
import direcciones.*

class Personaje {
    var property vivo = true
    var property llegoAPuerta = false
    var property position = game.at(1, 1)

    method image()
    method tocarAgua()
    method tocarLava()
    method interactuarConPuertaFuego()
    method interactuarConPuertaAgua()

    method morir() {
        vivo = false
        llegoAPuerta = false
    }

    method revivir() {
        vivo = true
    }

    method esSolido() = false

    method interactuarCon(otroPersonaje)

    method mover(direccion) {
        const destino = direccion.siguiente(position)
        if (vivo && self.puedeIrA(destino)) {
            position = destino
            llegoAPuerta = false
            game.getObjectsIn(destino).forEach({ elemento => elemento.interactuarCon(self) })
        }
    }

    method puedeIrA(destino) = self.dentroDelTablero(destino) && !self.hayObstaculoEn(destino)

    method dentroDelTablero(destino) =
        destino.x().between(0, game.width() - 1) && destino.y().between(0, game.height() - 1)

    method hayObstaculoEn(destino) = game.getObjectsIn(destino).any({ elemento => elemento.esSolido() })

    method marcarLlegada() {
        if (vivo) {
            llegoAPuerta = true
        }
    }

    method reiniciar() {
        vivo = true
        llegoAPuerta = false
    }
}

object fuego inherits Personaje {

    override method image() = "fuego.png"

    override method tocarAgua() {
        self.morir()
    }

    override method tocarLava() {
    }
    override method interactuarCon(otroPersonaje) {
        otroPersonaje.tocarLava()
    }
    override method interactuarConPuertaFuego() {
        self.marcarLlegada()
    }

    override method interactuarConPuertaAgua() {
    }
}

object agua inherits Personaje {

    override method image() = "agua.png"

    override method tocarAgua() {
    }

    override method tocarLava() {
        self.morir()
    }
    override method interactuarCon(otroPersonaje) {
        otroPersonaje.tocarAgua()
    }
    override method interactuarConPuertaFuego() {
    }

    override method interactuarConPuertaAgua() {
        self.marcarLlegada()
    }
}
