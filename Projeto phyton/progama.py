from rpg import *

# Criar banco no início
create_database()

# Inserir personagem no banco
def inserir_personagem(nome, classe, str_, dex, def_, int_, sp, mp):
    conn = get_connection()
    cursor = conn.cursor()

    cursor.execute("""
        INSERT INTO Personagem (nome, classe, STR, DEX, DEF, INT, SP, MP)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    """, (nome, classe, str_, dex, def_, int_, sp, mp))

    conn.commit()
    conn.close()
    print(f"\nPersonagem '{nome}' criado com sucesso!")


# Listagem de personagens
def listar_personagens():
    conn = get_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT id, nome, classe, STR, DEX, DEF, INT, SP, MP FROM Personagem")
    personagens = cursor.fetchall()

    conn.close()
    return personagens


# ============= PROGRAMA PRINCIPAL ==============
if __name__ == "__main__":

    print("\n=== CADASTRO DE PERSONAGEM ===\n")

    nome = input("Nome do personagem: ")
    classe = input("Classe: ")

    STR = int(input("STR (Força): "))
    DEX = int(input("DEX (Destreza): "))
    DEF = int(input("DEF (Defesa): "))
    INT = int(input("INT (Inteligência): "))
    SP = int(input("SP (Stamina): "))
    MP = int(input("MP (Mana): "))

    inserir_personagem(nome, classe, STR, DEX, DEF, INT, SP, MP)

    print("\n=== PERSONAGENS CADASTRADOS ===")
    for p in listar_personagens():
        print(p)

