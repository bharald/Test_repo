game :: IO ()
game = do
    putStrLn "Think of a number between 0 and 100"
    gameloop 0 100

gameloop :: RealFrac a => a -> a -> IO ()
gameloop x y = do
    putStrLn ("Is it " ++ (show(fromInteger(round((x + y)/2)))) ++ "?")
    a <- getLine
    if a == "l"
	then gameloop x $fromInteger(round((x+y)/2))
	else if a == "h"
	    then gameloop (fromInteger(round((x+y)/2))) y
	    else putStrLn "So ... I win!"
