# frozen_string_literal: true

# Actor class
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

# Movie class
class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    return unless actor.ready?

    puts actor.act
    puts actor.fall_off_ladder
    puts actor.light_on_fire
  end
end

actor = Actor.new("Brad Pitt")
movie = Movie.new(actor)
movie.start_shooting
