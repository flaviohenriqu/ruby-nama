# File:  tc_nama_team.rb
#!/usr/bin/ruby

require_relative "nama_team"
require "test/unit"
 
class TestNamaTeam < Test::Unit::TestCase
  
  def setup
    @result = '1, 2, 3, 4, Nama, 6, Team, 8, 9, Nama, 11, 12, 13, Team, Nama, 16, 17, 18, 19, Nama, Team, 22, 23, 24, Nama, 26, 27, Team, 29, Nama, 31, 32, 33, 34, Nama Team, 36, 37, 38, 39, Nama, 41, Team, 43, 44, Nama, 46, 47, 48, Team, Nama, 51, 52, 53, 54, Nama, Team, 57, 58, 59, Nama, 61, 62, Team, 64, Nama, 66, 67, 68, 69, Nama Team, 71, 72, 73, 74, Nama, 76, Team, 78, 79, Nama, 81, 82, 83, Team, Nama, 86, 87, 88, 89, Nama, Team, 92, 93, 94, Nama, 96, 97, Team, 99, Nama'
    @value = NamaTeam.new().multiples
  end
  

  def test_simple
    assert_equal(@result, @value)  
  end

  def test_num_5
  	assert_equal(20, @value.scan(/Nama/).length)
  end

  def test_num_7
  	assert_equal(14, @value.scan(/Team/).length)
  end

  def test_num_35
  	assert_equal(2, @value.scan(/Nama Team/).length)
  end
 
end