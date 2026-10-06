
class PuertaFuego {
    const property position

    method image() = "puertaFuego.png"

    method esSolido() = false

    method interactuarCon(personaje) {
        personaje.interactuarConPuertaFuego()
    }

}

class PuertaAgua {
    const property position

    method image() = "puertaAgua.png"

    method esSolido() = false

    method interactuarCon(personaje) {
        personaje.interactuarConPuertaAgua()
    }

}
