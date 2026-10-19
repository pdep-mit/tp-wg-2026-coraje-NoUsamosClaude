import wollok.game.*
import direcciones.*

class Personaje {
    var property vivo = true
    var property llegoAPuerta = false
    var property position = game.at(1, 1)

    method morir() {
        vivo = false
    }

    method revivir() {
        vivo = true
    }

    method esSolido() = false

    method interactuarCon(otroPersonaje) {
    }

    method mover(direccion) {
        const destino = direccion.siguiente(position)
        if (vivo && self.puedeIrA(destino)) {
            position = destino
            game.getObjectsIn(destino).forEach({ elemento => elemento.interactuarCon(self) })
        }
    }

    method puedeIrA(destino) = self.dentroDelTablero(destino) && !self.hayObstaculoEn(destino)

    method dentroDelTablero(destino) =
        destino.x().between(0, game.width() - 1) && destino.y().between(0, game.height() - 1)

    method hayObstaculoEn(destino) = game.getObjectsIn(destino).any({ elemento => elemento.esSolido() })

    method marcarLlegada() {
        llegoAPuerta = true
    }

    method reiniciar() {
        vivo = true
        llegoAPuerta = false
    }
}

object fuego inherits Personaje {

    method image() = "fuego.png"

    method tocarFuego() {
    }

    method tocarAgua() {
        self.morir()
    }

    method tocarLava() {
    }

    method interactuarConPuertaFuego() {
        self.marcarLlegada()
    }

    method interactuarConPuertaAgua() {
    }
}

object agua inherits Personaje {

    method image() = "agua.png"

    method tocarFuego() {
        self.morir()
    }

    method tocarAgua() {
    }

    method tocarLava() {
        self.morir()
    }

    method interactuarConPuertaFuego() {
    }

    method interactuarConPuertaAgua() {
        self.marcarLlegada()
    }
}