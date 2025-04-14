Triggers y funciones usadas en el proyecto.

Triggers:
Se elimino el anterior trigger para implementar uno nuevo debido a errores en la carga de datos.

EvitarVotoDoble(Nuevo): Este trigger se activa antes de insertar un registro en historialVoto, busca verificar si el votante ya esta registrado en esa eleccion especifica generando un error con el mensaje "Fraude detectado: este votante ya votó en esta elección"

ActualizarTotalVotos: Este trigger se activa despues de insertar un voto en la tabla Voto actualizando la columna totalVotos en Eleccion.

--------------------------------------------------------------------------------------------------------------------------------

Funciones:

ObtenerPartidoYVotosGanador: Recibe eleccionID como parametro y devuelve el nombre del partido con la cantidad de votos del candidato ganador/con mas votos de esa eleccion.
Funcionamiento: Llama una Query para obtener los datos, si el candidato no esta afiliado a un partido se lo considera independiente (aplicable en casos externos a la politica explicado en el modelo de negocion en el PDF), la funcion devuelve los datos del ganador/candidato con mas votos.

ObtenerPartidoGanador: Recibe eleccionID como parametros y devuelve el partido con mayor votos por eleccion, la exclusion del candidato se aplica en casos donde la consulta es general y no necesita detalles especificos de los votos o candidatos de la eleccion, dando la opcion de generar dos llamadas una especifica y otra de uso mas general.
Funcionamiento: Llama una Query para contar los voros de cada partido por eleccion, realiza el porcentaje y devuelve el partido con mayor cantidad de votos y su porcentaje en una cadena de texto.
