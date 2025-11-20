-- 1. UPDATE: Atualizar o valor de uma consulta específica (id_consulta = 2)
UPDATE Consulta
SET valor = 320.00 -- Reajuste de preço
WHERE id_consulta = 2;

-- 2. UPDATE: Corrigir o telefone de um paciente (usando CPF como chave)
UPDATE Paciente
SET telefone = '(85) 99900-1100'
WHERE cpf = '222.222.222-22'; -- Bruno Mendes Souza

-- 3. UPDATE: Adicionar um resultado a um exame que estava pendente (Exame de Mapeamento de Retina - id_exame = 2)
UPDATE Exame
SET 
    resultado = 'Disco óptico com escavação aumentada. Encaminhar para Campo Visual.',
    data_realizacao = '2025-10-12'
WHERE id_exame = 2;
