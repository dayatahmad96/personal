class Question
  def initialize(start)
    list_question = %w[book knife pocket glass speaker mouse laptop bag bottle]
    @question_index = list_question.map {|s| s.chomp}.shuffle
    @start = start
  end

  def question_index
    @question_index
  end

  def get_question_from_index
    question = @question_index.shift(@start)
    question
  end

  
end