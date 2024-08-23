# Classe Carro
class Carro:
    def __init__(self, cor, modelo, ano):
        self.cor = cor # Atributo que armazena a cor do carro
        self.modelo = modelo # Atributo que armazena o modelo do carro
        self.ano = ano # Atributo que armazena o ano de fabricação do carro

# Métodos da Classe Carro (comportamento)
    def acelerar(self):
        print(f'O {self.modelo} está acelerando!')
    def frear(self):
        print(f'O {self.modelo} está freando!')

# Instanciar (Criar objetos da classe Carro)
meu_carro = Carro('Vermelho', 'Ferrari', 2022)
outro_carro = Carro('Azul', 'BMW', 2020)

# Chamando métodos nos objetos criados
meu_carro.acelerar() # Saída: O Ferrari está acelerando!
outro_carro.frear() # Saída: O BMW está freando!