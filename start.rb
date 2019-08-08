require_relative 'question'
class Start
  def initialize(start)
    @start = start;
    @questions = Question.new(start)
    @score = 0
  end

  def question
    @questions = Question.new(@start)
  end

  def get_question
    @question = @questions.get_question_from_index
    @question.map {|w| w.split("").shuffle.join}
  end

  def score
    @score
  end
    
  def check_answer(answer)
    get_answer = answer.split(" ")
    if get_answer == @question
      @score += 1
      true
    else
      false
    end
  end
end