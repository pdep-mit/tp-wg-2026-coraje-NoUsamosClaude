import wollok.game.*

class Obstaculo {
    const property position

    method image()

    method esSolido() = true

    method interactuarCon(personaje) {
    }

}

class Pared inherits Obstaculo {

    override method image() = "pared.png"

}

class ParedRompible inherits Obstaculo {
    var property rota = false

    override method image() = "paredRompible.png"

    override method esSolido() = !rota

    method romper() {
        rota = true
        if (game.hasVisual(self)) {
            game.removeVisual(self)
        }
    }

    method reiniciar() {
        rota = false
        if (!game.hasVisual(self)) {
            game.addVisual(self)
        }
    }

}

class Boton {
    const property position
    const paredes = []

    method image() = "boton.png"

    method esSolido() = false

    method interactuarCon(personaje) {
        paredes.forEach({ pared => pared.romper() })
    }

}
