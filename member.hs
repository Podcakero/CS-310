module Main where

main = do member 0 [0, 1, 2, 3, 4]

member element lizt = do
	if length lizt == 0 
		then putStrLn "False"
	else if element == head lizt -- head lizt means get the first element of lizt
		then putStrLn "True"
	else member element tail lizt -- tail lizt removes the first element

