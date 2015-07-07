-- Funções Haskell Exercicios

import Data.Char
import Text.Printf
--------------------------------------
fatorial  :: Int -> Int 
fatorial 0 = 1
fatorial n = n * fatorial (n-1)
--------------------------------------
iniMaiusc :: String -> String 
iniMaiusc x = toUpper (head x) : tail x -- pega cabeça da string e devolve maiuscula concatenando com o corpo da lista
---------------------------------------
iniMaiusc2 :: String -> String
iniMaiusc2 "" = ""
iniMaiusc2 (x:xs) = toUpper x:xs
----------------------------------------
somaElem :: [Int] -> Int
somaElem [] = 0
somaElem (x:xs) = x + somaElem xs
----------------------------------------
tamanholist :: [a] -> Int
tamanholist [] = 0
tamanholist (x:xs) = 1 + tamanholist xs
----------------------------------------
geraPotencia2 :: Int -> [Int]
geraPotencia2 0 =[1]
geraPotencia2 n = 2*n : geraPotencia2 (n-1)
---------------------------------------
repetecarac :: Int -> Char -> [Char]
repetecarac 0 c = []
repetecarac n c = c : repetecarac (n-1) c
---------------------------------------------
quadradoTupla :: Int -> (Int,Int)
quadradoTupla n = (n,n*2)
----------------------------------------------
gerarTabela :: Int -> [(Int,Int)]
gerarTabela 0 = []
gerarTabela n = (n, n^2) : gerarTabela (n-1)
---------------------------------------------------
comparaListas :: [Int]->[Int] -> Bool
comparaListas [] [] = True
comparaListas [] _ = False
comparaListas _ [] = False
comparaListas (a:b)(c:d)| (a==c) = comparaListas b d
                        | otherwise = False
---------------------------------------------------------
inverteLista :: [a] -> [a]
inverteLista [] = []
inverteLista (x:xs) = inverteLista xs ++ [x] -- pega o corpo e concatena com a cabeça da lista recursivamente
--------------------------------------------------------------
pertenceLista :: [Int] -> Int -> Bool
pertenceLista [] _ = False
pertenceLista (x:xs) n | (x == n) = True 
                       | otherwise = pertenceLista xs n
------------------------------------------------------
maiorElem :: [Int] -> Int
maiorElem [x] = x
maiorElem (x:xs) | (x > maiorElem xs) = x -- cabeça maior que tail --- ele é o maior
                 | otherwise = maiorElem xs -- faz recursivamente para o resto da lista
--------------------------------------------------------
todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (x:xs) | (mod x 2 == 1) = False -- se o resto da divisão por 2 for 1 é impar
				  | otherwise = todosPares xs 
--------------------------------------------------------
{-removeMaior :: [Int] -> [Int]
removeMaior [] = []
removeMaior (x:xs) | (x == (maiorElem(x:xs))) = xs
				   | otherwise x: removeMaior xs-}

--------------------------------------------------------
is_Prime :: Int -> Bool 
is_Prime 1 = False
is_Prime 2 = True
is_Prime n | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
		   | otherwise = True 


		  
func :: Int -> [(Int, Int, Int)]
func n = [(x,y,z) | x <-[1..n], y<-[1..n], z<-[1..n], x^2 + y^2 == z^2]