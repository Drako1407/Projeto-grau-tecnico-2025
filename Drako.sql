<?xml version="1.0" encoding="UTF-8"?>
<database>
    <name>Drako</name>
    <table>
        <database></database>
        <name>Item_Venda</name>
        <ddl>CREATE TABLE Item_Venda (
            id_item_venda INTEGER PRIMARY KEY AUTOINCREMENT,
            id_venda INTEGER NOT NULL,
            id_produto INTEGER NOT NULL,
            quantidade INTEGER NOT NULL,
            valor_unitario REAL NOT NULL,
            FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
            FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
        )</ddl>
        <columns>
            <column>
                <name>id_item_venda</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>PRIMARY KEY</type>
                        <definition>PRIMARY KEY AUTOINCREMENT</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>id_venda</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>id_produto</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>quantidade</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>valor_unitario</name>
                <type>REAL</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <constraints>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY (id_venda) REFERENCES Venda(id_venda)</definition>
            </constraint>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
                </definition>
            </constraint>
        </constraints>
        <rows>
        </rows>
    </table>
    <table>
        <database></database>
        <name>Venda</name>
        <ddl>CREATE TABLE Venda (
            id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
            id_cliente INTEGER NOT NULL,
            data_venda TEXT NOT NULL,
            forma_pagamento TEXT NOT NULL,
            FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
        )</ddl>
        <columns>
            <column>
                <name>id_venda</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>PRIMARY KEY</type>
                        <definition>PRIMARY KEY AUTOINCREMENT</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>id_cliente</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>data_venda</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>forma_pagamento</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <constraints>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
                </definition>
            </constraint>
        </constraints>
        <rows>
        </rows>
    </table>
</database>
