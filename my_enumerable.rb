module MyEnumerable
  def all?
    ans = true
    each { |i| ans = false unless yield i }
    ans
  end

  def any?
    ans = false
    each { |i| ans = true if yield i }
    ans
  end

  def filter
    array = []
    each { |i| array.push(i) if yield i }
    array
  end
end
