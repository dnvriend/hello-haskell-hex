import Data.Hex

question :: String
question = "Type a string to convert to hexadecimal"

response :: String -> String -> String
response inpStr hexStr = "The hexadecimal representation of " ++ inpStr ++ " is: " ++ hexStr

main :: IO ()
main = do
       putStrLn question
       inpStr <- getLine
       putStrLn $ response inpStr $ hex inpStr