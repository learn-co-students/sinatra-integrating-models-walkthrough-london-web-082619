require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do #renders the index.erb page.
    erb :index
  end

  post '/' do #receives the form data through params and renders the results page
    @analyzed_text = TextAnalyzer.new(params[:user_text])
 
    erb :results
  end
end
