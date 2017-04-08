class Node
	def initialize(title)
		@value = title
		@edges = []
		@searched = false
		@parent = nil
	end

	attr_writer :value, :edges, :searched, :parent
	attr_reader :value, :edges, :searched, :parent

	def addEdge(neighbour)
		@edges << neighbour
		neighbour.edges << self
	end
end