$arr = []
def branch_template(roots)
  return if roots == []
  row = []
  next_roots=[]
  roots.each do |r|
    if r.kind_of?(Numeric)
       row << r.to_s
    elsif r
      row << r.root.to_s
      next_roots << r.left
      next_roots << r.right
    elsif r.nil?
      row << "" 
    end
  end
  $arr << row if row != []
  branch_template(next_roots)
end

branch_template([a])
$arr.each do |arr|
  arr.each do |n|
    print n + " "
  end
  p ""
  print "/\\ " * arr.length
  p "" 
end
