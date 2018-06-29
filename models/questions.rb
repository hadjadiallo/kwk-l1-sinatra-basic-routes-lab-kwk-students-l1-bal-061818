$oily=[["A","E"],["D","E"]]
$combinational=[["A","F"], ["A","G"], ["A","H"], ["B","E"],["B","F"],["B","H"], ["B","G"], ["C", "E"], ["C", "H"], ["C","G"] ["D","G"]]
$dry=[["C","F"],["D","F"]]
$balanced=["D","H"]


def skin_determinant(user_input)
  if $oily.include? user_input
    "oily"
  elsif $dry.include? user_input
    "dry"
  elsif $balanced.include? user_input
    "balanced"
 elsif $combinational.include? user_input
   "combinational"
end
end
