class Image
  def initialize(pixels)
    @pixels = pixels
  end
  
  def output_image
    @pixels.each do |subarray|
      puts subarray.join(" ")
    end
  end
end
  

  def blur_transform(number)
    n = number
    n.times do
      m = Marshal.load( Marshal.dump(@pixels) )
      @pixels.each_with_index do |row, y|
      row.each_with_index do |num, x|
        if m[y][x] = 1
          @pixels[y + 1][x] = 1 unless y == @pixels.length-1
          @pixels[y - 1][x] = 1 unless y == 0
          @pixels[y][x + 1] = 1 unless x == @pixels[y].length-1
          @pixels[y][x - 1] = 1 unless x == 0
        end
      end
    end
  end
end

image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])

image.output_image
image.blur_transform(1)
image.output_image