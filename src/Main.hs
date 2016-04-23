import Data.Hex

question = "Type a string to convert to hexadecimal"
response inpStr = "The hexadecimal representation of " ++ inpStr ++ " is: " ++ hex inpStr

main :: IO ()
main = do
       putStrLn question
       inpStr <- getLine
       putStrLn $ response inpStr