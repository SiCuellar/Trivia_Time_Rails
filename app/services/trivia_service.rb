class TriviaService 

  def get_easy_film_questions
    # return [] unless id
    get_json("?amount=50&category=11&difficulty=easy")[:results]
    # binding.pry
  end
  
  def get_medium_film_questions
    get_json("?amount=50&category=11&difficulty=medium")[:results]
  end

  
  def get_hard_film_questions
    get_json("?amount=10&category=11&difficulty=hard")[:results]
  end

  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn = Faraday.new(url: "https://opentdb.com/api.php") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end 
