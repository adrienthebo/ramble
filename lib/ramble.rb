# ramble.rb
#
# Generates 'sentences' of gibberish from a body of text

class Ramble
  
  def loadcorpus(filename)
    File.open(filename) do |f|
      @body = f.readlines.map { |m| m.chomp }
    end
  end

  def next
    iters = rand(10) + 3

    words = []
    iters.times { words << @body[rand(@body.size)] }

    fragment = words.join(" ")
    fragment.capitalize
  end

  def next!
    send(:next) + '!'
  end
end
