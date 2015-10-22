def complement(f)
  ->(*argument) { !f.call *argument }
end

def compose(f, g)
  ->(*argument) { f.call(g.call *argument) }
end
