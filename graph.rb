class Graph
	def initialize
		@nodes = []
		@graph = {}
		@start = nil
		@end = nil
	end

	attr_writer :nodes, :graph, :start, :end
	attr_reader :nodes, :graph, :start, :end

	def addNode(n)
		# Node into array
		@nodes << n
		# Node into "hash"
		title = n.value
		@graph[title] = n
	end

	def getNode(actor)
		n = @graph[actor]
		return n
	end

	def setStart(actor)
		@start = @graph[actor]
		return @start
	end

	def setEnd(actor)
		@end = @graph[actor]
		return @end
	end
end