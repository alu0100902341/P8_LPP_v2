# create a Struct with :value, :next and :prev
Nodo = Struct.new(:value, :next, :prev) do

end

class Lista

include Enumerable
attr_accessor :array, :head, :tail

  def initialize(vector)	

	@array = vector
	@head = @array[0]
	@tail = @array[-1]
  end

  def push_back(elemento)

	@array << elemento
	@array[0].prev = @array[-1].value
	@array[-2].next = @array[-1].value
	@tail = elemento
	return tail.value
  end


  def pop_front

	@array[-1].next = @array[1].value
	@array[1].prev = @array[-1].value
	@array.shift
	@head = @array[0]
	@tail = @array[-1]
	return @head.value

  end

  def pop

	@array[-2].next = @array[0].value
	@array[0].prev = @array[-2].value
	@array.pop
	@head = @array[0]
	@tail = @array[-1]
	return @tail.value

  end

  def each(&block)

	@array.each(&block)
  end

  def max(&block)
	@array.max(&block)
  end


end

