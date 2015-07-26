class JokesController < ApplicationController


  def index
    size = Joke.count
    selector = 1 + rand(size)
    @joke = Joke.where("id = ?", selector)
  end

  def new
    @joke = Joke.new
  end

  def create
      @joke = Joke.new(joke_params)
       if @joke.save
         redirect_to joke_path(@joke)
       else
         render :index
       end
  end

  protected

  def joke_params
     params.require(:joke).permit(
       :body
     )
  end
end
