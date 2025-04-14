S.P. utilizados en la base de datos.

ObtenerCandidatosPorEleccion: Devuelve los candidatos y sus detalles de una eleccion especifica

Funcionamiento: Selecciona la tabla de postulacion usando JOIN en las tablas de los candidatos, partido politico y cargo para obtener los datos y filtra por eleccionID, siendo este el parametro de entrada.

Output: Candidatos en base a la eleccionID elegida de manera ascendente


AgregarVotante: Agrega un nuevo votante en la base de datos

Funcionamiento: Inserta el registro de un nuevo Votante con la informacion de entrada (DNI, Nombre completo, edad, email, telefono).

Resultado: Agrega un nuevo votante


RegistrarVoto: Registra un voto para un candidato en una eleccion especifica, actualiza el total y calcula el porcentaje y posiciones de los candidatos.

Funcionamiento: Se inicia la transaccion para realizar las acciones, se inserta el voto, el candidato y la fecha, se actualiza el total de votos para la eleccion asi tambien la tabla eleccion, se realiza el pocentaje de votos en la tabla postulacion, se calculan las posiciones y se utiliza ROW_NUMBER() para ordenarlos por porcentaje, se finaliza y confirma la transaccion.

Resultado: Registra el voto, acutaliza los votos y recalcula porcentajes y posiciones.
