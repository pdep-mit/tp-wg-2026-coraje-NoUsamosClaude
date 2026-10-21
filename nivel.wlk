import wollok.game.*
import personajes.*
import paredes.*
import terrenos.*
import puertas.*

class Nivel {
    const elementosCargados = []

    method gano() = fuego.llegoAPuerta() && agua.llegoAPuerta()

    method perdio() = !fuego.vivo() || !agua.vivo()

    method posicionFuego()

    method posicionAgua()

    method elementos()

    method bordes() =
        (0..9).map({ n => new Pared(position = game.at(n, 0)) }) +
        (0..9).map({ n => new Pared(position = game.at(n, 9)) }) +
        (1..8).map({ n => new Pared(position = game.at(0, n)) }) +
        (1..8).map({ n => new Pared(position = game.at(9, n)) })

    method cargar() {
        fuego.reiniciar()
        agua.reiniciar()
        fuego.position(self.posicionFuego())
        agua.position(self.posicionAgua())
        elementosCargados.addAll(self.elementos())
        elementosCargados.add(fuego)
        elementosCargados.add(agua)
        elementosCargados.forEach({ elemento => game.addVisual(elemento) })
    }

    method descargar() {
        elementosCargados.forEach({ elemento =>
            if (game.hasVisual(elemento)) {
                game.removeVisual(elemento)
            }
        })
        elementosCargados.clear()
    }
}

object nivel1 inherits Nivel {

    override method posicionFuego() = game.at(1, 1)

    override method posicionAgua() = game.at(1, 2)

    method paredes() =
        (1..6).map({ n => new Pared(position = game.at(5, n)) }) +
        (3..4).map({ n => new Pared(position = game.at(2, n)) }) +
        (3..4).map({ n => new Pared(position = game.at(n, 6)) })

    method terrenos() =
        [new Lava(position = game.at(3, 1)), new Lava(position = game.at(3, 2)),
         new Lava(position = game.at(4, 2)), new Lava(position = game.at(7, 7)),
         new ZonaAgua(position = game.at(3, 4)), new ZonaAgua(position = game.at(3, 5)),
         new ZonaAgua(position = game.at(7, 8)), new ZonaAgua(position = game.at(6, 5)),
         new Acido(position = game.at(4, 4)), new Acido(position = game.at(4, 5))]

    method puertas() = [new PuertaFuego(position = game.at(8, 1)), new PuertaAgua(position = game.at(8, 2))]

    override method elementos() {
        const paredRompibleArriba = new ParedRompible(position = game.at(5, 8))
        const paredRompibleAbajo = new ParedRompible(position = game.at(5, 7))
        const boton = new Boton(position = game.at(1, 8), paredes = [paredRompibleArriba, paredRompibleAbajo])
        return self.bordes() + self.paredes() + self.terrenos() + self.puertas() +
            [paredRompibleArriba, paredRompibleAbajo, boton]
    }

}

object nivel2 inherits Nivel {

    override method posicionFuego() = game.at(1, 8)

    override method posicionAgua() = game.at(8, 8)

    method paredes() =
        [game.at(5, 8), game.at(2, 7), game.at(3, 7), game.at(5, 7), game.at(7, 7),
         game.at(2, 6), game.at(5, 6), game.at(7, 6), game.at(2, 5), game.at(4, 5),
         game.at(5, 5), game.at(7, 5), game.at(2, 3), game.at(3, 3), game.at(5, 3),
         game.at(7, 3), game.at(5, 2), game.at(7, 2), game.at(5, 1)]
            .map({ posicion => new Pared(position = posicion) })

    method terrenos() =
        [new Lava(position = game.at(2, 4)), new Lava(position = game.at(8, 6)),
         new ZonaAgua(position = game.at(1, 3)), new ZonaAgua(position = game.at(6, 5)),
         new Acido(position = game.at(3, 6)), new Acido(position = game.at(4, 1))]

    method puertas() = [new PuertaFuego(position = game.at(8, 1)), new PuertaAgua(position = game.at(1, 1))]

    override method elementos() {
        const paredRompible = new ParedRompible(position = game.at(5, 4))
        const boton = new Boton(position = game.at(4, 2), paredes = [paredRompible])
        return self.bordes() + self.paredes() + self.terrenos() + self.puertas() + [paredRompible, boton]
    }

}

object niveles {
    const lista = [nivel1, nivel2]
    var indice = 0

    method actual() = lista.get(indice)

    method hayProximo() = indice < lista.size() - 1

    method empezar() {
        indice = 0
        self.actual().cargar()
    }

    method avanzar() {
        self.actual().descargar()
        indice = indice + 1
        self.actual().cargar()
    }

    method reiniciar() {
        self.actual().descargar()
        self.actual().cargar()
    }
}
