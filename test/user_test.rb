require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")
    assert_equal "Ali", ali.name
  end

  def test_it_has_empty_jokes
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_user_can_learn_jokes
    sal = User.new("Sal")
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    sal.learn(joke)
    assert_equal 1, sal.jokes.length
  end

  def test_user_can_tell_jokes
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    assert_equal 0, ali.jokes.length
    sal.tell(ali, joke)
    assert_equal 1, ali.jokes.length
  end

  def test_user_can_do_routine
    joke_1 = Joke.new({id: 1, question: "Why did the strawberry cross the road?",
      answer: "Because his mother was in a jam."})
    joke_2 = Joke.new({id: 2, question: "How do you keep a lion from charging?",
      answer: "Take away its credit cards."})
    ilana = User.new("Ilana")
    josh = User.new("Josh")
    ilana.learn(joke_1)
    ilana.learn(joke_2)
    ilana.perform_routine_for(josh)
    assert_equal 2, josh.jokes.length
  end

  def test_user_can_learn_routine
    casey = User.new("Casey")
    casey.learn_routine('./jokes.csv')
    binding.pry
    assert_equal 100, casey.jokes.count
  end
end
