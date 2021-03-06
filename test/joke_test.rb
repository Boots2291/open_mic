require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  def test_joke_exists
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    assert_instance_of Joke, joke
  end

  def test_joke_has_id
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    assert_equal 1, joke.id
  end

  def test_joke_has_question
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    assert_equal String, joke.question.class
  end

  def test_joke_has_answer
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    assert_equal String, joke.answer.class
  end
end
