from flask import Flask, render_template, request
import pyodbc

app = Flask(__name__)

# Define a string de conexão
conn_str = (
    r'DRIVER={MySQL ODBC};'
    r'SERVER=DELLG3-NTSH;'
    r'DATABASE=Combatentes;'
    r'Trusted_Connection=yes;'
)

# Definindo a string correta para verificação
string_correta = "SenhaCorreta123"  # Substitua pela sua senha correta

def get_tabela():
    try:
        conn = pyodbc.connect(conn_str)
        cursor = conn.cursor()
        sql_query = "SELECT nome FROM guerr WHERE combate LIKE '%velocidade'"
        cursor.execute(sql_query)
        guerr_names = [row[0] for row in cursor.fetchall()]
        conn.close()
        return guerr_names
    except Exception as e:
        print("Erro ao conectar ao banco de dados:", e)
        return []

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/verificar_senha', methods=['POST'])
def verificar_senha():
    senha = request.form['senha']

    if senha == string_correta:
        try:
            # Extrair os nomes das guerrilhas
            guerr_names = get_tabela()

            # Retornando os nomes das guerrilhas como string
            return "<br>".join(guerr_names)
        except Exception as e:
            # Caso algum erro ao conectar ao banco de dados, exibir o erro
            return f"Erro ao extrair nomes das guerrilhas: {e}"
    else:
        return "Senha incorreta. Tente novamente."

if __name__ == '__main__':
    app.run(debug=True)
