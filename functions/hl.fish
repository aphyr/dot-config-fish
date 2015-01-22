# Highlights a phrase in stdin
function hl
  grep --color -E "$argv|\$"
end
