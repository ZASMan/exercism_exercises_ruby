class HighScores

  attr_accessor :scores

  def initialize(scores)
  	@scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.sort.last(3).reverse
  end

  def report
  	message_string = "Your latest score was"
  	if latest == personal_best
      message_string + " " + latest.to_s + ". That's your personal best!"
    else
      message_string + " " + latest.to_s + ". That's " + (personal_best - latest).to_s + " short of your personal best!"
    end
  end
end
