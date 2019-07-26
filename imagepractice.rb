class Image
	def initialize(image)
		@image = image
	end

	def output_image
		@image.each do |x|
			puts x.join(" ")
		end
	end
	def output_image
		@pixels.each do |subarray|
		  subarray.each do |num| 
		  #p subarray
		  #puts subarray.join(" ")
			print num
		  end
		  puts
	end
end

row1 = [0, 0, 0, 0]
row2 = [0, 1, 0, 0]
row3 = [0, 0, 0, 1]
row4 = [0, 0, 0, 0]

image = Image.new(
	[row1, row2, row3, row4]
)

image.output_image 
