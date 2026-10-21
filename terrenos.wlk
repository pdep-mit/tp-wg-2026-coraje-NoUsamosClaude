
class Terreno {
    const property position

    method esSolido() = false

    method interactuarCon(personaje) {
        self.aplicarEfecto(personaje)
    }

    method image()

    method aplicarEfecto(personaje)
}

class Lava inherits Terreno {

    override method image() = "lava.png"

    override method aplicarEfecto(personaje) {
        personaje.tocarLava()
    }
}

class ZonaAgua inherits Terreno {

    override method image() = "zonaAgua.png"

    override method aplicarEfecto(personaje) {
        personaje.tocarAgua()
    }
}

class Acido inherits Terreno {

    override method image() = "acido.png"

    override method aplicarEfecto(personaje) {
        personaje.morir()
    }
}
