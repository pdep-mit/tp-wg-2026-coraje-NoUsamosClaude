# Wollok Game: Título de juego

**Grupo:** NoUsamosClaude

**Integrantes:**
- Carlos Eduardo Saikali Pulido
- Maximo Lautaro Starowiecki
- Ariana Castro
- Nombre y Apellido
- Nombre y Apellido

## Consignas

Todo lo que necesitan saber está explicado en [este documento](https://docs.google.com/document/d/1KoB12RIZk_xPhmnOJ-EfLIPNwkETD_EaYMp2srDu9QY/edit?tab=t.0#heading=h.wnm2lu4cls8j). Para todo lo demás, aseguren prestar atención a los comunicados por Discord.

Revisen los archivos de base y cambien lo que quieran para ajustarlo a sus necesidades. Lo primero que deberían hacer es actualizar 

Recuerden que para cada checkpoint hay [expectativas mínimas](https://docs.google.com/document/d/1KoB12RIZk_xPhmnOJ-EfLIPNwkETD_EaYMp2srDu9QY/edit?tab=t.0#heading=h.56t0qdv908v3) respecto a los conceptos aplicados. Procuren:
- Validar su idea con el equipo docente que corresponda por su canal de Discord
- Para cada checkpoint, asegurar que implementaron lo necesario para esa instancia, y crear un **tag** en el repositorio para facilitar la comparación entre versiones final e intermedias.
- Para la demo final, crear un nuevo tag **demo** y actualizar este README con todo lo necesario.

# Cómo jugar

## Objetivo

Fuego y Agua es un juego cooperativo para dos jugadores, en el que cada uno controla un personaje con habilidades diferentes.

El objetivo es recorrer los laberintos, superar los obstáculos y lograr que ambos personajes lleguen a sus respectivas puertas de salida.

Cada personaje tiene características particulares:

Fuego: puede atravesar la lava sin morir, pero muere si entra en contacto con el agua.

Agua: puede atravesar las zonas de agua sin morir, pero muere si entra en contacto con la lava.

Ácido: es peligroso para ambos personajes. Tanto Fuego como Agua mueren si lo pisan.

Paredes: bloquean el movimiento de ambos personajes, por lo que deben encontrar caminos alternativos.

Paredes rompibles: son obstáculos que pueden destruirse para habilitar nuevos caminos.

Botones: son mecanismos que permiten destruir determinadas paredes rompibles del mapa. Cuando un personaje pisa un botón, este activa el mecanismo correspondiente y elimina la pared asociada, dejando libre el camino para que los personajes puedan avanzar.

El juego cuenta con dos niveles de dificultad progresiva:

Nivel 1: los jugadores deben recorrer un laberinto con paredes, paredes rompibles, botones, zonas de agua, lava y ácido. Para avanzar, deberán superar los obstáculos y utilizar los mecanismos disponibles para abrir nuevos caminos.

Nivel 2: presenta un laberinto más complejo, con una distribución de obstáculos que aumenta la dificultad y requiere mayor coordinación entre ambos personajes.

Para completar un nivel, Fuego debe llegar a la puerta de fuego y Agua debe llegar a la puerta de agua. Una vez completado el primer nivel, se avanza al segundo.

Si alguno de los personajes entra en contacto con un terreno incompatible, muere y deja de poder moverse.

## Controles

El juego permite controlar a los dos personajes de manera independiente utilizando el teclado.

Personaje Fuego:

W: moverse hacia arriba.

S: moverse hacia abajo.

A: moverse hacia la izquierda.

D: moverse hacia la derecha.

Personaje Agua:

↑: moverse hacia arriba.

↓: moverse hacia abajo.

←: moverse hacia la izquierda.

→: moverse hacia la derecha.

Botones:

Se activan automáticamente cuando alguno de los personajes los pisa.

Al activarse, destruyen la pared rompible asociada y habilitan un nuevo camino.

Reiniciar el juego:

Presionar la tecla R para reiniciar la partida y volver a jugar.

Al reiniciar, los personajes vuelven a sus posiciones iniciales y se restablece el estado del nivel.

Ambos personajes deben colaborar para superar los obstáculos, activar los mecanismos necesarios y encontrar el camino hacia sus respectivas puertas.
# Explicaciones

Las explicaciones teóricas y diagramas van a encontrarse en [explicaciones.md](explicaciones.md) a partir del Checkpoint #2.
