module Main where

numbers = [0, 1, 2, 3, 4, 5]

main :: IO ()
main = do 
    let test1 = (member 0 numbers)
    let test2 = (member 7 numbers)
    putStrLn ( "Is 0 a member of [0, 1, 2, 3, 4, 5]?: " ++ test1 )
    putStrLn ( "Is 7 a member of [0, 1, 2, 3, 4, 5]?: " ++ test2 )

member :: Int -> [Int] -> String
member 0 [] = ""
member element lizt = do
	if (length lizt) == 0 
		then "False"
	else if element == (head lizt) -- head lizt means get the first element of lizt
		then "True"
	else member element (tail lizt) -- tail lizt removes the first element
