## Coffee & Dreams

Proyecto de Creación Multimedia Interactiva de la  Facultad de Bellas Artes de la Universidad de Granada
**Enlace al juego** : https://macarenagm05.itch.io/coffee-dreams



# 1 Datos 



**Titulo** : Coffee & Dreams

**Web:**  https://github.com/macarenagm05

**Autor:**  Macarena Gómez Martínez

**Resumen** : Convierte en el nuevo empleado de "Coffee &  Dreams" y ayuda a sus dueñas a conseguir el mayor número de estrellas posibles.

**Estilo/género:**  Arcade

**Logotipo** : 

![IMG_2547 (2)](https://github.com/user-attachments/assets/60a0eb7f-c4b0-41fd-ac06-f42b9af2296d)



**Resolución:** 1152 x 648 px

**Probado en:**  Google Chrome, Explorer

**Tamaño proyecto:** 96,275 KB

**Licencia** Este proyecto tiene una Licencia CC Reconocimiento Compartir igual (CC BY-SA)

**Fecha** : 25/05/2025

**Medios** 

- Github:  https://github.com/macarenagm05





# 2. Memoria del proyecto 

### 2.1 Storyboard: 

Eres el nuevo empleado de la cafetería "Coffee & Dreams" y allí deberás llevar a cabo la tarea de conseguir el mayor número de estrellas posible, con cuidado de no chocar con los obstáculos que van apareciendo en pantalla, meta que se volverá cada vez más complicada ya que cuantas más estrellas cojas, más aumenta tu velocidad.

![IMG_2566](https://github.com/user-attachments/assets/621a0ed5-c9a6-467b-9554-ad01fae8fb3b)




### 2.2. Esquema de navegación 

![IMG_2565](https://github.com/user-attachments/assets/bf9be4e2-d104-4c0b-87b2-393a557a5c7c)











# 3. Metodología





### Etapa 1: Ideación de proyecto

**Investigación de campo** 
Proyectos que me han inspirado de cara a la elaboración de mi juego:
- "My Sims": por su original diseño de personaje, combinando un estilo sencillo con formas y elementos que ayudan a dotar a cada uno de ellos de una esencia única.

-  "Snake": por conseguir crear, a partir de una dinámica tan sencilla, un pequeño videojuego que nos garantiza largas horas de entretenimiento en el que además cada partida es distinta a la anterior.


**Motivación de la propuesta** 

Considero este proyecto interesante porque se trata de un enfoque algo distinto a un clásico de los videojuegos como es el "Snake" además de introducirlo en un contexto nuevo y con personajes que lo acompañan.



**Publico / audiencia**

- Orientado a todos los públicos





### Etapa 2: Desarrollo / actividades realizadas

- Juego: para el desarrollo de este, decidí basar la dinámica principal en la colisión de distintos nodos Area 2D (cada uno con un Sprite y un Collision Shape 2D como nodos hijos). El nodo del personaje que controlamos, la taza, deberá moverse por la escena para así alcanzar las estrellas que van apareciendo en esta, sin embargo, por cada estrella alcanzada, el nodo 2D Spawner (hijo del nodo Gameplay, que es donde se desarrolla toda la acción)  se encargará de tres tareas: hacer desaparecer dicha estrella; generar una nueva; y hacer aparecer un obstáculo el cual, al chocar con él, hará que se pause la escena Gameplay y haciendo aparecer sobre este la escena GameOver (que está creada como CanvasLayer para así poder permitir cierta transparecia y que sigamos viendo la pantalla de juego abajo y que en el script de Gameplay está marcada como constante)que se encarga de pausar el juego, además en esta nos aparecerá un contador con nuestra puntuación final (el número de estrellas conseguidas) y dos botones: uno que nos llevará directamente a comenzar el juego de nuevo (es decir, de nuevo a la escena Gameplay) y otro que nos lleva de vuelta al menú. Por último, destacar que el juego cuenta con una variable Speed que hará que sea posible el aumento de la velocidad a medida que vayamos consiguiendo estrellas.

- Galería de fotos: esta presenta distintas ilustraciones que sirven como presentación de los distintos personajes además de una pequeña animación de estos que se reproduce en bucle. Cuenta con dos botones (hacia delante y hacia atrás) que permiten la navegación entre los distintos elementos y uno más que nos lleva al menú, todos ellos dotados de sonido y themes personalizados realizados por mí.

- Menú y elementos de navegación: cuenta con una animación de fondo que se reproduce en bucle creada a partir de un nodo Parallax en una escena a parte, a esto se le suman distintos botones variados con themes para todos sus estados (hover, pressed y normal) y sonido (tanto de fondo como en dichos botones) y también la presencia de un timer en cada uno de estos a lo largo de todo el juego que nos permiten aclimatarnos un poco a las transiciones entre escenas y apreciar más los distintos sonidos que estos poseen.

- Teaser: sirve como presentación del juego, realizado mediante el uso del nodo Animation Player y que también cuenta con sonido ambiental.

### Etapa 3: Problemas identificados

En ocasiones existe la posibilidad de que las distintas estrellas que debemos coger aparezcan en el mismo punto que los obstáculos que debemos esquivar, haciendo que no sea posible continuar con el juego.



# 4. Conclusiones 

A pesar de estar contenta con el resultado, ya que la programación es algo con lo que yo no tenía experiencia previa, quizás me hubiera gustado explorar un poco más la posibilidad de añadir distintos elementos en pantalla que hicieran la mecánica del juego algo más complicada, y también que estos se hubieran generado de forma aleatoria para así hacer cada partida completamente distinta a la anterior.


# 5 Referencias 

* Tutorial Snake de Bacon and Games: https://youtu.be/c7HQwxs5y8w?si=UJhapObh2h95SmkQ
	

**Recursos y materiales audiovisuales:**

* Musica (obtenida a través de Pixabay):  
	* Exciting Upbeat Backgroung Music - original_soundtrack
	* Twikles and Bells - alanajordan
	* Magic Ascend - BenKirb
	* Magic Descend - BenKirb
	* Charming Twinkle Sound for Fantasy and Magic - UniversField
* Imágenes:  Todas creadas originalmente por mí usando el software de dibujo Procreate
* Video: Animación creada por mí en Procreate
* Tipografía: 
	*	Rockwell (Free Font Family)
	*	Eina 01 Semibold  (Fontshmonts)

**Herramientas utilizadas**

- Godot Engine 4.4.1
- Procreate


