##📚 Repositório de Práticas em SQL

##📍 Descrição
Repositório dedicado a exercícios, projetos e exemplos práticos de SQL (Structured Query Language). Aqui você encontra desde consultas básicas até técnicas avançadas para dominar bancos de dados relacionais.

##🛠 Tecnologias Utilizadas
SGBDs: MySQL, PostgreSQL, SQLite

Ferramentas: DBeaver, VS Code, Git

Extras: GitHub Actions (para testes automatizados)

##🚀 Como Usar
Clone o repositório:

bash
git clone https://github.com/seu-usuario/sql-praticas.git  
Execute os scripts:

Use um cliente SQL (DBeaver, MySQL Workbench) ou linha de comando.

Exemplo para MySQL:

bash
mysql -u usuario -p < fundamentos/select-filtering.sql  
Contribua:

Envie pull requests com melhorias ou novos exercícios.

Reporte problemas via issues.

##📌 Exemplo de Código
sql
-- Exemplo: Consulta com JOIN e GROUP BY  
SELECT  
    c.nome AS cliente,  
    COUNT(p.id) AS total_pedidos  
FROM clientes c  
LEFT JOIN pedidos p ON c.id = p.cliente_id  
GROUP BY c.id  
ORDER BY total_pedidos DESC;  
##🎯 Objetivos
Aprender SQL na prática com exemplos reais.
Preparar-se para entrevistas técnicas (ex: desafios de HackerRank).
Compartilhar conhecimento com a comunidade.
