# CleanConnect

## Miembros del grupo L8-AM-3

1. Rodríguez Ortiz, David
2. Pérez Dot, Pol
3. Rodríguez González, Gerard
4. Ruiz Núñez, Manuel

## 1. Introducción al problema
En la sociedad actual, el ritmo de vida que llevamos tan acelerado y las jornadas de trabajo eternas hacen que las familias y los profesionales independientes prácticamente no tengan tiempo libre. De toda la vida, contratar a alguien para limpiar en casa siempre ha sido cuestión de recomendaciones de boca en boca o de recurrir a las típicas agencias que te pegan un sablazo con las comisiones. Al final, es un sector donde hay muchísimo trabajo en negro, los precios nunca están claros y cuesta la misma vida dar con alguien de confianza que encima tenga hueco cuando a ti te viene bien.

Por el lado de los clientes, los principales problemas son la desconfianza de meter a un desconocido en tu casa, lo difícil que es encontrar a alguien disponible a las horas que te interesan, tener que pagar siempre en efectivo a la antigua y no tener referencias de verdad para saber si esa persona es de fiar.

Por la parte de los profesionales de la limpieza, se encuentran con que les cuesta bastante dar con clientes fijos, sufren impagos o cancelaciones a última hora que les dejan vendidos, pierden muchísimo tiempo entre casa y casa, y encima no tienen herramientas para organizarse el día a día de forma profesional.

Para solucionar todo esto surge el proyecto CleanConnect, que busca digitalizar y formalizar este sector mediante una aplicación móvil y web al estilo de Uber. La plataforma hará de intermediaria para asegurar que los clientes puedan encontrar a alguien rápido, ver perfiles con identidad verificada, consultar opiniones con estrellas y comentarios, y pagar de forma segura. Mientras tanto, a los profesionales les garantiza flexibilidad de horarios, cobrar siempre sin sustos, gestionar su agenda fácilmente e ir construyendo su propia reputación en internet.

## 2. Glosario de términos

- Términos específicos del dominio del problema, ordenados alfabéticamente. Se valorará la presencia de información multimedia.

## 3. Visión general del sistema

### 3.1. Requisitos generales

  #### R.G.01. Gestión de especialidades   
Como administrador del sistema

Quiero gestionar las especialidades de limpieza disponibles

Para categorizar los servicios que pueden ofrecer los trabajadores  

  #### R.G.02. Gestión de clientes y trabajadores   
Como administrador del sistema

Quiero gestionar las cuentas y perfiles de los usuarios

Para garantizar la autenticidad y seguridad de la plataforma  

  #### R.G.03. Gestión de reservas de servicio   
Como cliente

Quiero gestionar las reservas de servicios de limpieza

Para coordinar la asistencia de un trabajador a mi domicilio  
  
  #### R.G.04. Gestión de reseñas y valoraciones   
Como cliente

Quiero gestionar las reseñas sobre los trabajadores

Para construir la reputación pública de los profesionales 
  
  #### R.G.05. Gestión de incidencias   
Como administrador del sistema

Quiero gestionar las incidencias reportadas por los usuarios

Para resolver mediaciones y disputas de forma justa
  
  #### R.G.06. Gestión de facturas y pagos   
Como cliente

Quiero gestionar los pagos y la consulta de facturas

Para mantener el control del gasto de los servicios contratados   

  
### 3.2. Usuarios del sistema
   - Administrador: Gestor del sistema con acceso completo para la validación de perfiles, resolución de incidencias y moderación
   - Cliente: Usuario que busca, reserva, paga servicios de limpieza y evalúa el trabajo recibido.
   - Trabajador: Profesional de la limpieza que gestiona su disponibilidad, acepta reservas, ejecuta el servicio y recibe cobros.


## 4. Catálogo de requisitos

### 4.1. Requisitos funcionales

#### R.F.01.1 Creación de especialidad
Como administrador del sistema

Quiero crear nuevas especialidades de limpieza

Para permitir que los trabajadores las añadan a su perfil

Prueba de aceptación: 

- No se puede crear una especialidad sin nombre o con nombre duplicado


#### R.F.01.2 Edición de especialidad
Como administrador del sistema

Quiero editar las especialidades existentes

Para actualizar sus nombres o descripciones.

Prueba de aceptación:   

- Al editar una especialidad no se alteran las asignaciones previas a trabajadores

- No se puede dejar el nombre en blanco  


#### R.F.01.3 Eliminación de especialidad
Como administrador del sistema

Quiero eliminar especialidades obsoletas

Para mantener actualizado el catálogo de servicios

Prueba de aceptación:   

- Al eliminar una especialidad, se desvincula automáticamente de los trabajadores que la tenían seleccionada   


#### R.F.02.1 Registro de cliente
Como cliente

Quiero registrarme en la plataforma

Para poder reservar servicios de limpieza

Prueba de aceptación:   

- No se puede crear un cliente sin nombre, email válido o teléfono


#### R.F.02.2 Edición de perfil de cliente
Como cliente

Quiero actualizar mi dirección principal y teléfono

Para garantizar la localización correcta al solicitar un servicio

Prueba de aceptación:   

- No se puede dejar la dirección ni el teléfono vacíos  


#### R.F.03.1 Alta de trabajador
Como trabajador

Quiero registrar mi perfil con DNI/NIE, tarifa horaria y zona de trabajo

Para ofertar mis servicios en la plataforma

Prueba de aceptación:   

- La tarifa horaria debe ser mayor que 0

- El estado inicial del perfil será siempre "Pendiente de validación" 


#### R.F.03.2 Validación de trabajador
Como administrador del sistema

Quiero validar el perfil de un trabajador tras comprobar su documentación

Para autorizarlo a recibir reservas

Prueba de aceptación:   

- Se aplica la regla de negocio R.N.06  


#### R.F.04.1 Creación de reserva de servicio
Como cliente

Quiero solicitar la reserva de un servicio indicando fecha, hora, horas estimadas y trabajador

Para asegurar la asistencia del profesional a mi domicilio

Prueba de aceptación:   

- No se puede crear una reserva sin cliente, trabajador, fecha o dirección  

- Las horas de duración deben ser mayores que 0   

- Se debe cumplir la regla de negocio R.N.06   


#### R.F.04.2 Edición de reserva de servicio
Como cliente

Quiero modificar la fecha u hora de una reserva

Para adaptar el servicio a cambios en mi agenda.

Prueba de aceptación:   

- Se debe cumplir la regla de negocio R.N.01   


#### R.F.04.3 Cancelación de reserva
Como cliente o trabajador

Quiero cancelar una reserva programada

Para liberar el tiempo en la agenda

Prueba de aceptación:   

- Se aplica la penalización o reembolso según la regla de negocio R.N.01.  


#### R.F.05.1 Creación de reseña
Como cliente

Quiero valorar un servicio completado con una puntuación y comentario

Para expresar mi grado de satisfacción con el trabajador

Prueba de aceptación:   

- La puntuación debe estar comprendida entre 1 y 5

- Se debe cumplir la regla de negocio R.N.03.   


#### R.F.05.2 Moderación de reseña
Como administrador del sistema

Quiero eliminar reseñas con contenido ofensivo

Para mantener el respeto en las valoraciones

Prueba de aceptación:   

- Al eliminar la reseña se recalcula automáticamente la nota media del trabajador.   


#### R.F.06.1 Apertura de incidencia
Como cliente o trabajador

Quiero registrar una incidencia asociada a un servicio

Para solicitar la mediación del administrador ante un problema

Prueba de aceptación:  

- No se puede abrir una incidencia sin asociar un servicio existente.
    
- Se debe cumplir la regla de negocio R.N.05.   


#### R.F.06.2 Resolución de incidencia
Como administrador del sistema

Quiero registrar el cierre de una incidencia con su resolución tomada

Para finalizar la disputa y liberar los fondos retenidos

Prueba de aceptación:   

- El estado de la incidencia pasa a "Resuelta" o "Desestimada".


#### 4.1.1. Requisitos de información

##### R.I.01 Información sobre especialidades
Como administrador del sistema

Quiero disponer del listado de especialidades con el número de trabajadores asignados a cada una

Para analizar la oferta de servicios de la plataforma

Prueba de aceptación:  

- El sistema muestra el nombre, descripción y recuento de profesionales por especialidad.


##### R.I.02 Información sobre trabajadores disponibles
Como cliente

Quiero disponer de la lista de trabajadores filtrada por especialidad, nota media, tarifa máxima y disponibilidad

Para seleccionar al profesional idóneo.

Prueba de aceptación:  

- El sistema lista nombre, foto, especialidades, tarifa por hora y nota media calculada de los trabajadores validados.  


##### R.I.03 Información sobre historial de reservas
Como cliente o trabajador

Quiero consultar la información de mis reservas pasadas y futuras, incluyendo fecha, horas, dirección y estado

Para llevar el seguimiento de mis servicios

Prueba de aceptación:  

- El sistema muestra la lista detallada de reservas vinculadas al usuario   


##### R.I.04 Información sobre valoraciones y reseñas
Como cliente

Quiero consultar la lista de valoraciones de un trabajador, incluyendo estrellas y comentarios de clientes previos

Para comprobar su reputación antes de contratar

Prueba de aceptación:  

- El sistema muestra las opiniones asociadas a servicios completados del trabajador  


##### R.I.05 Información sobre incidencias
Como administrador del sistema

Quiero disponer de la lista de incidencias pendientes de resolución con fecha, emisor, tipo y servicio afectado
Para intervenir oportunamente en los conflictos

Prueba de aceptación:  

- El sistema presenta la lista ordenada por fecha de apertura.   


##### R.I.06 Información sobre facturas y pagos
Como cliente

Quiero disponer del desglose del importe pagado en cada servicio

Para tener comprobantes de pago de mis contrataciones

Prueba de aceptación: 

- El sistema muestra el id del servicio, fecha, horas realizadas, tarifa/hora e importe total pagado.


#### 4.1.2. Reglas de negocio

#### R.N.01. Cambios y cancelaciones de reservas
Como administrador del sistema

Quiero que los clientes puedan modificar o cancelar la reserva sin coste hasta 12 horas antes del inicio previsto

Para dar flexibilidad al cliente sin perjudicar el tiempo reservado del trabajador. Si se cancela con menos de 12 horas, se cobrará al cliente 1 hora de servicio como penalización.   


#### R.N.02. Restricción de reseñas
Como administrador del sistema

Quiero que solo se pueda redactar una reseña si existe un servicio con estado "Completado" vinculado entre el cliente y el trabajador

Para evitar valoraciones falsas o manipulación de la reputación.   


#### R.N.03. Suspensión por baja calificación
Como administrador del sistema

Quiero que si la nota media de un trabajador cae por debajo de 3.0 estrellas (tras acumular al menos 5 reseñas), su perfil pase automáticamente al estado "Suspendido"

Para garantizar unos estándares mínimos de calidad en el servicio.   


#### R.N.04. Retención de cobro por incidencia
Como administrador del sistema

Quiero que si se abre una incidencia sobre un servicio, el pago correspondiente se mantenga retenido

Para evitar transferir dinero al trabajador hasta que el conflicto sea resuelto por el administrador.   


#### R.N.05. Cálculo del importe del servicio
Como administrador del sistema

Quiero que el importe total del servicio se calcule multiplicando el número de horas contratadas por la tarifa horaria vigente del trabajador

Para garantizar que el cobro guarde proporcionalidad exacta con el tiempo de trabajo acordado y evitar errores de cálculo en las facturas


#### R.N.06. Validación obligatoria de trabajadores
Como administrador del sistema

Quiero que un trabajador solo aparezca en las búsquedas si su estado es "Validado"

Para garantizar que todos los profesionales hayan pasado la verificación de identidad.


### 4.2. Mapa de historias de usuario (opcional)

| Actividades | 1. Registro y Perfil | 2. Búsqueda y Reserva | 3. Ejecución y Pago | 4. Opiniones e Incidencias |
| :--- | :--- | :--- | :--- | :--- |
| **Tareas** | - Gestión de usuarios<br>- Validación de identidad | - Buscar profesionales<br>- Confirmar fecha y hora | - Realizar servicio<br>- Consultar factura | - Valorar servicio<br>- Gestionar disputas |
| **Release 1** | HU-01, HU-02 | HU-03, HU-04 | HU-05, HU-06 | HU-07, HU-08 |
| **Release 2** | HU-09 | HU-10 | HU-11 | HU-12 |

---

#### Historias de Usuario - Release 1 (Entrega principal)

#### Registro y Perfil
##### HU-01: Registro de usuario
Como usuario (cliente o trabajador),

quiero registrarme en la plataforma con mis datos personales,

para poder acceder a los servicios de CleanConnect.


##### HU-02: Validación de trabajador
Como administrador del sistema,

quiero verificar y validar la documentación de un trabajador,

para garantizar que solo profesionales autorizados aparezcan en las búsquedas.


#### Búsqueda y Reserva
##### HU-03: Búsqueda por especialidad**
Como cliente,

quiero filtrar los trabajadores por especialidad de limpieza,

para encontrar al profesional adecuado para mi necesidad.


##### HU-04: Reserva de servicio
Como cliente,

quiero seleccionar un trabajador, fecha y hora disponible,

para coordinar la asistencia de un servicio de limpieza en mi domicilio.


#### Ejecución y Pago
##### HU-05: Finalización del servicio
Como trabajador,

quiero marcar un servicio como completado,

para que se registre la ejecución y se procese el cobro correspondiente.


##### HU-06: Consulta de importe y factura
Como cliente,

quiero consultar el importe total calculado según las horas contratadas,

para mantener el control de mis gastos en la plataforma.


#### Opiniones e Incidencias
##### HU-07: Publicación de reseña
Como cliente,

quiero valorar con estrellas y un comentario a un trabajador tras un servicio completado,

para ayudar a construir la reputación pública del profesional.


##### HU-08: Apertura de incidencia
Como cliente o trabajador,

quiero reportar un problema sobre un servicio prestado,

para que el administrador retenga el pago y medie en la disputa.


---

#### Historias de Usuario - Release 2 (Mejoras futuras)

##### HU-09: Foto de perfil y avatar
Como usuario,

quiero subir una fotografía a mi perfil,

para generar mayor confianza con los demás usuarios de la plataforma.


##### HU-10: Filtrado avanzado por distancia y precio
Como cliente,

quiero ordenar los trabajadores por tarifa horaria o cercanía,

para optimizar la selección según mi presupuesto y ubicación.


##### HU-11: Descarga de facturas en PDF
Como cliente,

quiero descargar un documento formal en PDF de cada servicio pagado,

para conservarlo en mis archivos personales o contables.


##### HU-12: Adjuntar evidencias en incidencias
Como usuario,

quiero adjuntar fotografías al reportar una incidencia,

para facilitar al administrador la resolución del conflicto con pruebas visuales.


### 4.3. Requisitos no funcionales (opcional)

#**R.N.F. 01. Tiempo de respuesta en búsquedas**

Como cliente,

quiero que el tiempo de respuesta al filtrar trabajadores sea menor a 2 segundos con hasta 1000 usuarios concurrentes,

para mejorar la experiencia de uso y evitar la frustración en la navegación.


#**R.N.F. 02. Protección y control de acceso**

Como responsable TIC del cliente,

quiero que las contraseñas se almacenen cifradas y los datos personales estén protegidos con control de acceso por roles,

para cumplir con la Ley de Protección de Datos y garantizar la privacidad de los usuarios.


#**R.N.F. 03. Disponibilidad del servicio**

Como responsable de ventas,

quiero que la disponibilidad del sistema sea lo más cercana posible a 24/7,

para facilitar las contrataciones de servicios de limpieza en cualquier momento.


#**R.N.F. 04. Compatibilidad web**

Como desarrollador del sistema,

quiero que la plataforma sea accesible desde navegadores web estándar,

para asegurar la compatibilidad sin necesidad de instalar software adicional.


#**R.N.F. 05. Seguridad en el procesamiento de pagos**

Como cliente,

quiero que el procesamiento de pagos se realice mediante una pasarela externa certificada,

para garantizar que los datos bancarios no sean almacenados en los servidores de la plataforma.


-- fin entregable 1 --

## 5. Modelo conceptual

### 5.1. Diagramas de clases UML

- con restricciones.

### 5.2. Escenarios de prueba

- con descripción textual y diagrama de objetos UML.

## 6. Matrices de trazabilidad

- Matriz de trazabilidad entre los elementos del modelo conceptual y los requisitos.

|       | EntidadX   | AsociaciónX  | RestricciónX  | Entidad2 ...   | 
|:------|:-----------|:-----------|:-----------|:-----------|
| RI-1  | X          | X          | X          | X          |
| RI-2  |            | X          |            | X          |
| RF-1  |            | X          |            | X          |
| RF-2  | X          |            | X          | X          |
| RN-1  |            | X          |            |            |
| RN-2  | X          | X          | X          |            |
| ...   |            |            |            |            |

-- fin entregable 2 --

## 7. Modelo relacional en 3FN

- Relaciones obtenidas al aplicar la transformación del modelo conceptual.

### 7.1.  Justificación de la estrategia de transformación de jerarquías

- si se identificaron jerarquías en el MC.


### 8. Matriz de trazabilidad MC/SQL (opcional):

- Restricciones sobre el MC / Elementos del modelo tecnológico (SQL) (Triggers, checks, etc.)
- Incluir Reglas de negocio — Constraints/Triggers en las matrices de trazabilidad para el entregable 3

|       | EntidadX   | AsociaciónX  | RestricciónX  | Entidad2 ...   | 
|:-------|:-------|:-------|:-------|:-------|
| TABLA-1 |        |        |        |        |
| TABLA-2 |        |        |        |        |
| TABLA-3 |        |        |        |        |
| TABLA-4 |        |        |        |        |
| TRIG-1 |        |        |        |        |
| TRIG-2 | X      | X      |        | X      |
| TRIG-3 |        | X      |        | X      |
| TRIG-4 |        |        | X      |        |
| CONST-1 |        |        |        |        |
| CONST-2 | X      | X      |        | X      |
| CONST-3 |        | X      |        | X      |
| CONST-4 |        |        | X      |        |

Se consideran todo tipo de constraints declarativas (aquellas definidas durante el CREATE TABLE).
-- fin entregable 3 --

## Referencias


