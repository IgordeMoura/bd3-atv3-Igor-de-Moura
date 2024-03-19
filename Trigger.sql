use bd_escola;

delimiter $
Create Trigger trg_delete_aluno before delete on tbl_aluno
for each row
Begin
insert into tbl_aluno_bkp
set
cod_aluno = old.cod_aluno,
cod_turma = old.cod_turma,
nome = old.nome,
cpf = old.cpf,
rg = old.rg,
telefone_aluno = old.telefone_aluno,
telefone_responsavel = old.telefone_responsavel,
email = old.email,
data_nascimento = old.data_nascimento,
date_delete = now();
end
$