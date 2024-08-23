with open(ARQUIVO_DADOS, 'r', encoding='utf-8') as arquivo:
    dados = json.load(arquivo)
Restaurante.restaurantes.clear() # Limpa a lista de restaurantes antes de carregar os novos dados
for restaurante_dados in dados:
    restaurante = Restaurante(
        restaurante_dados['nome'],
        restaurante_dados['categoria']
    )
    # Configura o estado ativo e as avaliações do restaurante
    restaurante._ativo = restaurante_dados['ativo']
    restaurante._avaliacao = [Avaliacao(**avaliacao) for avaliacao in restaurante_dados
                               ['avaliacao']]
except FileNotFoundError:
    print(f"Arquivo de dados não encontrado. Criando um novo arquivo em {ARQUIVO_DADOS}")
    salvar_dados() # Cria um arquivo vazio se não existir
#Função para salvar dados dos restaurantes em um arquivo JSON
def salvar_dados():
    dados = []
    for restaurante in Restaurante.restaurantes:
        dados.append({
            'nome': restaurante._nome,
            'categoria': restaurante._categoria,
            'ativo': restaurante._ativo,
            'avaliacao': [avaliacao.dict() for avaliacao in restaurante._avaliacao]
        })
with open(ARQUIVO_DADOS, 'w', encoding='utf-8') as arquivo:
    json.dump(dados, arquivo, indent=4, ensure_ascii=False) # Salva os dados no arquivo com indentação
    # para melhor leitura
```