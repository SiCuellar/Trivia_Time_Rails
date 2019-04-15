class Question 

    attr_reader :category,
                :type,
                :difficulty,
                :question,
                :correct_answer,
                :incorrect_answers

    def initialize(data)
        @category = data[:category]
        @type = data[:type]
        @difficulty = data[:difficulty]
        @question = data[:question]
        @correct_answer= data[:correct_answer]
        @incorrect_answers= data[:incorrect_answers]
    end 
end 