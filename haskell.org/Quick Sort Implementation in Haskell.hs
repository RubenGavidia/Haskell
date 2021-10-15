-- Quick Sort Implementation in Haskell

main :: IO ()
main = print( qsort [5,6,4,1,2,3,4])

qsort [] = []

qsort( x:xs ) = qsort smaller ++ [x] ++ qsort larger
				where
					smaller = [ a | a <- xs, a <= x]
					larger = [ b | b <- xs, b > x] 