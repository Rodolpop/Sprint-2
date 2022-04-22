SELECT * FROM universidad;

SELECT apellido1,apellido2, nombre FROM persona ORDER BY apellido1;

SELECT nombre, apellido1, apellido2 FROM persona WHERE telefono IS NULL;

SELECT * FROM persona WHERE YEAR(fecha_nacimiento) = '1999';

SELECT * FROM persona WHERE tipo = 'profesor' AND nif LIKE '%K' AND telefono IS NULL;

SELECT * FROM asignatura WHERE cuatrimestre = '1' AND curso = '3' AND id_grado = '7';

SELECT  persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre FROM persona, departamento WHERE TIPO = 'profesor' ORDER BY apellido1;

SELECT asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin  FROM asignatura, curso_escolar, persona WHERE nif = '26902806M';

SELECT departamento.nombre, persona.nombre FROM departamento, persona, grado WHERE grado.nombre = 'Ingenieria informática (plan 2015)';

SELECT alumno_se_matricula_asignatura.id_alumno FROM alumno_se_matricula_asignatura WHERE id_curso_escolar = '5' GROUP BY id_alumno,id_curso_escolar;

SELECT persona.nombre, apellido1, apellido2, departamento.nombre FROM profesor RIGHT JOIN departamento ON profesor.id_departamento = departamento.id RIGHT JOIN persona ON persona.id=profesor.id_profesor WHERE tipo = 'profesor' ORDER BY departamento.nombre ASC, apellido1 ASC, apellido2 ASC, persona.nombre ASC;

SELECT p.apellido1, p.apellido2, p.nombre, id_profesor FROM persona AS p LEFT JOIN profesor AS pr ON p.id=pr.id_departamento WHERE id_departamento IS NULL AND p.tipo LIKE 'profesor';

SELECT * FROM profesor LEFT JOIN departamento On profesor.id_departamento = departamento.id WHERE id_departamento IS NULL;

SELECT profesor.id_profesor FROM profesor LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE profesor.id_profesor NOT LIKE 3 AND profesor.id_profesor NOT LIKE 14;



SELECT asignatura. * FROM profesor,asignatura WHERE asignatura.id_profesor IS NULL;

SELECT id_alumno, sum(id_alumno) FROM alumno_se_matricula_asignatura;

SELECT fecha_nacimiento, sum(id) FROM  persona WHERE year(fecha_nacimiento) = '1999'  GROUP BY fecha_nacimiento ;

SELECT departamento


