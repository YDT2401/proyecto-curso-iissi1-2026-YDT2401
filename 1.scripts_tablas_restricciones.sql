CREATE OR REPLACE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    telefono INT NOT NULL
);

CREATE OR REPLACE TABLE Administradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE OR REPLACE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE Trabajadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    dni VARCHAR(255) NOT NULL,
    tarifaHora DECIMAL(10,2) NOT NULL,
    validado BOOLEAN NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE OR REPLACE TABLE Servicios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	clienteId INT NOT NULL,
	trabajadorId INT NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaFin DATE NOT NULL,
	estadoServicio ENUM("pendiente","en_proceso","finalizado","cancelado") NOT NULL,
	costeTotal DECIMAL(10,2),
	FOREIGN KEY (clienteId) REFERENCES Clientes(id)
		ON DELETE CASCADE  
		ON UPDATE CASCADE,
	FOREIGN KEY (trabajadorId) REFERENCES Trabajadores(id)
		ON DELETE CASCADE  
		ON UPDATE CASCADE	
);

CREATE OR REPLACE TABLE Incidencias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    clienteId INT NOT NULL,
    administradorId INT,
    FOREIGN KEY (clienteId) REFERENCES Clientes(id) 
        ON DELETE RESTRICT 
        ON UPDATE RESTRICT,
    FOREIGN KEY (administradorId) REFERENCES Administradores(id) 
        ON DELETE SET NULL 
        ON UPDATE SET NULL
);
