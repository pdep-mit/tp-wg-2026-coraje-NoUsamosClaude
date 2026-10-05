import wollok.game.*

class Personaje {
    var property vivo = true
    var property position = game.at(1, 1)

    method morir() {
        vivo = false
    }

    method revivir() {
        vivo = true
    }
}

object fuego inherits Personaje {

    method tocarFuego() {
    }

    method tocarAgua() {
        self.morir()
    }
}

object agua inherits Personaje {

    method tocarFuego() {
        self.morir()
    }

    method tocarAgua() {
    }
}