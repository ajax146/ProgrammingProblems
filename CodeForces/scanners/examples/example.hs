import Data.IORef
import Data.List
import Control.Monad
import System.IO

data Scanner = Scanner { buffer :: IORef [String] }

-- Create a new scanner
newScanner :: IO Scanner
newScanner = do
    buf <- newIORef []
    return $ Scanner buf

-- Refill the buffer from input
refill :: Scanner -> IO ()
refill sc = do
    buf <- readIORef (buffer sc)
    when (null buf) $ do
        line <- getLine
        let tokens = words line
        writeIORef (buffer sc) tokens

-- Pop next token as a string
nextToken :: Scanner -> IO String
nextToken sc = do
    refill sc
    (t:ts) <- readIORef (buffer sc)
    writeIORef (buffer sc) ts
    return t

-- Convert next token to Int
nextInt :: Scanner -> IO Int
nextInt sc = fmap read (nextToken sc)

-- Convert next token to Double
nextDouble :: Scanner -> IO Double
nextDouble sc = fmap read (nextToken sc)

-- Convert next token to Integer (long)
nextLong :: Scanner -> IO Integer
nextLong sc = fmap read (nextToken sc)

-- Return the next token as a string
nextWord :: Scanner -> IO String
nextWord sc = do
    refill sc
    (t:ts) <- readIORef (buffer sc)
    writeIORef (buffer sc) ts
    return t

-- Read the rest of the current line (or entire line if buffer empty)
nextString :: Scanner -> IO String
nextString sc = do
    buf <- readIORef (buffer sc)
    if not (null buf)
        then do
            writeIORef (buffer sc) []
            return $ unwords buf
        else getLine

-- Read array of Ints from the current line
nextIntArray :: Scanner -> Bool -> IO [Int]
nextIntArray sc sorted = do
    buf <- readIORef (buffer sc)
    when (null buf) $ refill sc
    arr <- fmap (map read) (readIORef (buffer sc))
    writeIORef (buffer sc) []
    return $ if sorted then sort arr else arr

-- Read array of Longs from the current line
nextLongArray :: Scanner -> Bool -> IO [Integer]
nextLongArray sc sorted = do
    buf <- readIORef (buffer sc)
    when (null buf) $ refill sc
    arr <- fmap (map read) (readIORef (buffer sc))
    writeIORef (buffer sc) []
    return $ if sorted then sort arr else arr

main :: IO ()
main = do
    -- Declare the scanner
    sc <- newScanner

    -- One int
    i <- nextInt sc
    print i

    -- One double
    a <- nextDouble sc
    print a

    -- One 64 bit int (long)
    l <- nextLong sc
    print l

    -- One word
    w <- nextWord sc
    putStrLn w

    -- One string/line
    l2 <- nextString sc
    putStrLn l2

    -- Int array
    ia <- nextIntArray sc True
    putStrLn $ unwords (map show ia)

    -- 64 bit int array
    la <- nextLongArray sc False
    putStrLn $ unwords (map show la)
