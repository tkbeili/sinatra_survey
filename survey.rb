class Survey
  attr_reader :deadline
  attr_reader :consider_yourself
  attr_reader :interest

  def initialize(deadline, consider_yourself, interest)
    @deadline, @consider_yourself, @interest = 
      deadline, consider_yourself, interest
  end

  def survey_results
    if deadline=="with" && consider_yourself =="rational" && interest =="ideas"
      "Rational"
    elsif deadline=="with" && consider_yourself =="rational" && interest =="facts"
      "Guardian"
    elsif deadline=="without" && consider_yourself =="rational" && interest =="ideas"
      "Rational"
    elsif deadline=="without" && consider_yourself =="rational" && interest =="facts"
      "Artisan"
    elsif deadline=="with" && consider_yourself =="compassionate" && interest =="ideas"
      "Idealist"
    elsif deadline=="with" && consider_yourself =="compassionate" && interest =="facts"
      "Guardian"
    elsif deadline=="without" && consider_yourself =="compassionate" && interest =="ideas"
      "Idealist"
    elsif deadline=="without" && consider_yourself =="compassionate" && interest =="facts"
      "Artisan"
    else
      "unknown"
    end
  end


end