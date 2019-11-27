require 'minitest/autorun'
require_relative 'task'

class TaskTest < MiniTest::Test
	def setup
		@model = Task.new
	end

	def test_1
		assert_output(/1/){ @model.loop 1 }
	end

	def test_2
		assert_output(/1\n11/){ @model.loop 2 }
	end

	def test_3
		assert_output(/1\n11\n21/){ @model.loop 3 }
	end

	def test_4
		assert_output(/1\n11\n21\n1211/){ @model.loop 4 }
	end

	def test_5
		assert_output(/1\n11\n21\n1211\n111221/){ @model.loop 5 }
	end

	def test_6
		assert_output(/1\n11\n21\n1211\n111221\n312211/){ @model.loop 6 }
	end

	def test_7
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221/){ @model.loop 7 }
	end

	def test_8
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211/){ @model.loop 8 }
	end

	def test_9
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211\n31131211131221/){ @model.loop 9 }
	end

	def test_10
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211\n31131211131221\n13211311123113112211/){ @model.loop 10 }
	end

	def test_11
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211\n31131211131221\n13211311123113112211\n11131221133112132113212221/){ @model.loop 11 }
	end

	def test_12
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211\n31131211131221\n13211311123113112211\n11131221133112132113212221\n3113112221232112111312211312113211/){ @model.loop 12 }
	end

	def test_13
		assert_output(/1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211\n31131211131221\n13211311123113112211\n11131221133112132113212221\n3113112221232112111312211312113211\n1321132132111213122112311311222113111221131221/){ @model.loop 13 }
	end
end
