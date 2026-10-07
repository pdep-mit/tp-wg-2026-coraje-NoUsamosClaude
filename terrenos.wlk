class Lava {
    const property position

    method image() = "lava.png"

    method esSolido() = false

    method interactuarCon(personaje) {
        personaje.tocarLava()
    }
}

class ZonaAgua {
    const property position

    method image() = "zonaAgua.png"

    method esSolido() = false

    method interactuarCon(personaje) {
        personaje.tocarAgua()
    }
}
