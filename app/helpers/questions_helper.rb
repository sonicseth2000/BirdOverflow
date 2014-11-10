module QuestionsHelper
   def answer_question(question)
    if(question.answered==false)
    question.answered=true
    elsif
    question.answered=false
    end
    question.save
    return ""
   end
end
