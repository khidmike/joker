class JokesController < ApplicationController


  def index
    @jokes = Joke.all
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
