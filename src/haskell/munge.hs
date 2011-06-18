import Monad
import Data.List.Split
import Data.List

squareLine = intercalate "," . map (show . (^2) . read) . splitOn ","

main = do
  interact (unlines . map squareLine . lines)