# Título Proyecto

## Miembros del grupo L8-AM-3(sustituir)

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

Para categorizar los servicios que pueden ofrecer los trabajadores.  

  #### R.G.02. Gestión de clientes y trabajadores   
Como administrador del sistema

Quiero gestionar las cuentas y perfiles de los usuarios

Para garantizar la autenticidad y seguridad de la plataforma.  

  #### R.G.03. Gestión de reservas de servicio   
Como cliente

Quiero gestionar las reservas de servicios de limpieza

Para coordinar la asistencia de un trabajador a mi domicilio.   
  
  #### R.G.04. Gestión de reseñas y valoraciones   
Como cliente

Quiero gestionar las reseñas sobre los trabajadores

Para construir la reputación pública de los profesionales.   
  
  #### R.G.05. Gestión de incidencias   
Como administrador del sistema

Quiero gestionar las incidencias reportadas por los usuarios

Para resolver mediaciones y disputas de forma justa.  
  
  #### R.G.06. Gestión de facturas y pagos   
Como cliente

Quiero gestionar los pagos y la consulta de facturas

Para mantener el control del gasto de los servicios contratados.   
  
### 3.2. Usuarios del sistema

## 4. Catálogo de requisitos

### 4.1. Requisitos funcionales

#### R.F.01. Título requisito funcional

Como [tipo de usuario]
quiero [servicio]
para [razón]

**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- Se debe aplicar la regla de negocio R.N.XX.
- ...

#### 4.1.1. Requisitos de información

##### R.I.01. Título requisito de información

Como [tipo de usuario]
quiero [servicio]
para [razón]

**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- ...

#### 4.1.2. Reglas de negocio

##### R.N.01. Título regla negocio

Descripción de la regla de negocio.

### 4.2. Mapa de historias de usuario (opcional)

### 4.3. Requisitos no funcionales (opcional)

**R.N.F. 01. Título requisito no funcional**
Como [tipo de usuario]
quiero [servicio]
para [razón]

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


