#!/usr/bin/ruby

class NamaTeam

  def multiples
    result = ''
    (1..100).select do |i|
  	  case
  	  when i % 35 == 0
  	    result = result + 'Nama Team'
  	  when i % 5 == 0
  	    result = result + 'Nama'
  	  when i % 7 == 0
  	    result = result + 'Team'
  	  else
  	    result = result + i.to_s
  	  end
  	  separator = i < 100 ? ', ' : ''
      result = result + separator
    end
    return result
  end

end
