class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @answer = params['answer']
    @coach = if @answer.equal? 'I am going to work'
               'Great!'
             elsif @answer[-1] == '?'
               'Silly question, get dressed and go to work!'
             else
               'I dont care, get dressed and go to work!'
             end
  end
end
