import wollok.game.*

class Cartel {
    const imagen

    method position() = game.at(1, 4)

    method image() = imagen

    method esSolido() = false

    method interactuarCon(personaje) {
    }
}

object cartelNivelSuperado inherits Cartel(imagen = "cartelNivelSuperado.png") {
}

object cartelPerdieron inherits Cartel(imagen = "cartelPerdieron.png") {
}

object cartelGanaron inherits Cartel(imagen = "cartelGanaron.png") {
}

object pantalla {
    var cartelActual = null

    method mostrar(cartel) {
        self.ocultar()
        cartelActual = cartel
        game.addVisual(cartel)
    }

    method ocultar() {
        if (cartelActual != null) {
            game.removeVisual(cartelActual)
            cartelActual = null
        }
    }
}
