import sqlite3

DATABASE_NAME = "rpg.db"

SQL_SCRIPT = """
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- ============================================
-- TABELA DE PERSONAGENS
-- ============================================
CREATE TABLE IF NOT EXISTS Personagem (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE,
    classe TEXT NOT NULL,
    STR INTEGER NOT NULL,
    DEX INTEGER NOT NULL,
    DEF INTEGER NOT NULL,
    INT INTEGER NOT NULL,
    SP INTEGER NOT NULL,
    MP INTEGER NOT NULL
);

-- ============================================
-- TABELA DE INIMIGOS (EXEMPLO DO SEU ARQUIVO)
-- ============================================
CREATE TABLE IF NOT EXISTS Enemy_status_1 (
    id_enemy INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    class TEXT NOT NULL,
    STR INTEGER NOT NULL,
    DEX INTEGER NOT NULL,
    DEF INTEGER NOT NULL,
    INT INTEGER NOT NULL,
    SP INTEGER NOT NULL,
    MP INTEGER NOT NULL
);

INSERT INTO Enemy_status_1 (Name, class, STR, DEX, DEF, INT, SP, MP) VALUES
('Goblin', 'Saber', 50, 50, 50, 50, 200, 200),
('Koala',  'Caster',  50, 50, 50, 500, 200, 200);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
"""

# ============================================================
# FUNÇÃO PARA CRIAR O BANCO
# ============================================================
def create_database():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()

    cursor.executescript(SQL_SCRIPT)

    conn.commit()
    conn.close()
    print("Banco de dados criado com sucesso (via SQL interno)")

# ============================================================
# CONEXÃO
# ============================================================
def get_connection():
    return sqlite3.connect(DATABASE_NAME)

