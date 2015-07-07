import System.Random

principal = do 
				num <- radomRIO (1::Int, 100)
				adivinhar num

adivinhar num = do
				putStr "Digite um numero entre 1 e 100:"
				n <- getLine
				if (read n) < num
					then do 
						putStrLn "Dica: mais para cima!"
						adivinhar num 
					else if (read n) > num
						then do 
							putStrLn "Dica: mais para baixo"
							adivinhar num
						else do putStrLn "Parabens Voce acertou!"
