-- 1
START TRANSACTION;
insert into professor(nro_registro_professor, especialidade, nome, dataadimissao)
values 
(1, 'Mecatrônica', 'Clara Almeida', '2023-06-11');
savepoint professorAdicionado;
insert into professor (nro_registro_professor, especialidade, nome, dataadimissao) values
 (2, 'Elêtrica', 'João Gomes', '2021-10-10'),
 (3, 'Elêtrica', 'Bento Ramos', '2022-02-02' ),
  (4, 'Mecânica', 'Fernando da Silva', '2023-01-01'); 
 COMMIT;

-- 2
start transaction;
UPDATE professor SET nome='Clara de Almeida' WHERE nro_registro_professor =1;
commit;

 -- 3
 START TRANSACTION;
insert into disciplina(codigo_disciplina, nome_disciplina, carga_horaria, descricao)
values 
(1, 'mecatronica', 50, mecratronica);
savepoint disciplinaadicionada;
insert into disciplina(codigo_disciplina, nome_disciplina, carga_horaria, descricao) values
 (2, 'tecnico de ti', 70, 'desenvolvimento de informatica'),
 (3, 'Elêtrica', 90, 'eletrica eletronica' ),
  (4, 'Mecânica', '70', 'mecanica'),
   (5, 'gastronomia', '70', 'aprender cozinhar'); 
 COMMIT;
 rollback to savepoint disciplinaadicionada;
