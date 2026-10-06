object lava {

    method esSolido() = false

    method interactuarCon(personaje) {
        personaje.tocarLava()
    }
}

object zonaAgua {

    method esSolido() = false

    method interactuarCon(personaje) {
        personaje.tocarAgua()
    }
}