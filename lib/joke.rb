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