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
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Inventario_ID, Clase_ID)
values ('LUFFY', 50, 100, 1, 1);
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Inventario_ID, Clase_ID)
values ('LIGHT', 25, 80, 2, 4);
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Inventario_ID, Clase_ID)
values ('GANDALF', 15, 70, 3, 2);
insert into JuegoRPG.personajes (NombrePersonaje, Nivel, Vida, Inventario_ID, Clase_ID)
values ('USSOP', 30, 90, 4, 3);

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
insert into JuegoRPG.items (NombreItem, TipoItem, Descripcion)
values ('Espada Larga', 'Arma', 'Una espada larga y afilada, ideal para combates cuerpo a cuerpo');
insert into JuegoRPG.items (NombreItem, TipoItem, Descripcion)
values ('Varita Mágica', 'Arma', 'Una varita que canaliza el poder mágico del usuario');
insert into JuegoRPG.items (NombreItem, TipoItem, Descripcion)
values ('Arco Recurvado', 'Arma', 'Un arco ligero y resistente, perfecto para ataques a distancia');
insert into JuegoRPG.items (NombreItem, TipoItem, Descripcion)
values ('Daga Oculta', 'Arma', 'Una daga pequeña y afilada, ideal para ataques sigilosos');

--- INSERT FOR INVENTARIOS ---
insert into JuegoRPG.inventarios (Capacidad, Item_ID, Equipado)
values (10, 1, 1);
insert into JuegoRPG.inventarios (Capacidad, Item_ID, Equipado)
values (8, 2, 1);
insert into JuegoRPG.inventarios (Capacidad, Item_ID, Equipado)
values (12, 3, 1);
insert into JuegoRPG.inventarios (Capacidad, Item_ID, Equipado)
values (6, 4, 1);