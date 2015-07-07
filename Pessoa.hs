type Pessoa = String
type Carro = String
type Idade = Int
type Registro = (Pessoa, Carro, Idade)
type BD = [Registro]

fBd :: BD
fBd = [("Joao", "Camaro", 26),("Maria", "Fusca", 30),("Luiz","Hrv", 20)]

getPessoa :: Registro -> Pessoa
getPessoa (p,_,_) = p

getCarro :: BD -> [Carro]
getCarro [] = []
getCarro ((_,carro,_):xs) = carro : getCarro xs