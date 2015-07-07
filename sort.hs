import Data.List

type Nome = String
type Linguagem = String
type Pessoa = Programador Nome Linguagem
				deriving (Show, Eq, Ord)

programador1 = Programador "Rafael" "Lisp"
programador2 = Programador "Alessandro" "Haskell"
programador3 = Programador "Rudiao" "Python"

lista = [programador1, programador2, programador3]

inicio = sort Lista
