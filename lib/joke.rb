class Joke
  attr_reader :id,
              :question,
              :answer

  def initialize(hash)
    @id = hash.values[0]
    @question = hash.values[1]
    @answer = hash.values[2]
  end

end



# joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
# # => #<Joke:0x007fc87b02c2e0 ...>