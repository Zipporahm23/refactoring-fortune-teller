class FortuneController < ApplicationController
def horoscopes

  @hscope = params.fetch("the_sign")
  all_zodiacs = Zodiac.list
  this_zodiac = all_zodiacs.fetch(@hscope.to_sym)
  @horoscope = this_zodiac.fetch(:horoscope)
  @hname = this_zodiac.fetch(:name)
@array_of_numbers = Array.new
    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "zodiac_templates/horoscopes.html.erb" })
  end
end
