class JokesController < ApplicationController

  def index
    size = Joke.count
    selector = 1 + rand(size)
    @joke = Joke.where("id = ?", selector)
  end
end
