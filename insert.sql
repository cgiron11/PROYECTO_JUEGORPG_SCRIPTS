--- INSEERT FOR CLASES ---
INSERT into JuegoRPG.Clases (NombreClase, Descripcion) 
values ('Guerrero', 'Clase de combate cuerpo a cuerpo');
insert into JuegoRPG.clases (NombreClase, Descripcion)
values ('Mago', 'Clase especializada en magia ofensiva y defensiva');
insert into JuegoRPG.clases (NombreClase, Descripcion)
values ('Arquero', 'Clase experta en ataques a distancia con arco y flechas');
insert into JuegoRPG.clases (NombreClase, Descripcion)
values ('Asesino', 'Clase sigilosa y ágil, experta en ataques sorpresa');

--- INSERT FOR PERSONAJES ---
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Clase_ID)
values ('LUFFY', 50, 100, 1);
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Clase_ID)
values ('LIGHT', 25, 80,4);
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Clase_ID)
values ('GANDALF', 15, 70,2);
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Clase_ID)
values ('USSOP', 30, 90,3);
INSERT into JuegoRPG.Personajes(NombrePersonaje, Nivel, Vida, Clase_ID)
values ('ZORO', 45, 95, 4);

--- INSERT FOR HABILIDADES ---
insert into JuegoRPG.habilidades (NombreHabilidad, Clase_ID, CostoMana, Efecto)
values ('Espada Giratoria', 1, 20, 'Ataque en área que daña a todos los enemigos cercanos');
insert into JuegoRPG.habilidades (NombreHabilidad, Clase_ID, CostoMana, Efecto)
values ('Bola de Fuego', 2, 30, 'Lanza una bola de fuego que inflige daño por quemadura');
insert into JuegoRPG.habilidades (NombreHabilidad, Clase_ID, CostoMana, Efecto)
values ('Disparo Concentrado', 3, 15, 'Dispara una flecha con precisión aumentada que tiene mayor probabilidad de crítico');
insert into JuegoRPG.habilidades (NombreHabilidad, Clase_ID, CostoMana, Efecto)
values ('Golpe siniestro', 4, 25, 'Ataque sorpresa que inflige critico garantizado por la espalda');

--- INSERT FOR ITEMS ---
insert into JuegoRPG.items (NombreItem)
values ('Espada Larga');
insert into JuegoRPG.items (NombreItem)
values ('Varita Mágica');
insert into JuegoRPG.items (NombreItem)
values ('Arco Recurvado');
insert into JuegoRPG.items (NombreItem)
values ('Daga Oculta');

--- INSERT FOR INVENTARIOS ---
insert into JuegoRPG.inventarios (NombreInventario)
values ('Ataques pesados');
insert into JuegoRPG.inventarios (NombreInventario)
values ('Magias de fuego');
insert into JuegoRPG.inventarios (NombreInventario)
values ('Sobreviviente del bosque');
insert into JuegoRPG.inventarios (NombreInventario)
values ('Equipo de sigilo');

--- INSERT FOR ASIGNACION ---
insert into JuegoRPG.asigno (Inventario_ID, Item_ID, Personaje_ID)
values (1, 1, 5);
insert into JuegoRPG.asigno (Inventario_ID, Item_ID, Personaje_ID)
values (2, 2, 6);
insert into JuegoRPG.asigno (Inventario_ID, Item_ID, Personaje_ID)
values (3, 3, 7);
insert into JuegoRPG.asigno (Inventario_ID, Item_ID, Personaje_ID)
values (4, 4, 8);