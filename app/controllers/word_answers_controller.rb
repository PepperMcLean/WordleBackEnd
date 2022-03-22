class WordAnswersController < ApplicationController

  def random
    render json: WordAnswers.order('RANDOM()').first
  end

  def index
    # render json: WordAnswers.all
    answers = WordAnswers.all
    answerWords = []
    answers.each do |a|
      answerWords << a.word
    end
    render json: answerWords
  end

  def update
    @wordAnswer = WordAnswers.find(params[:id])
    @wordAnswer.update!(wordAnswer_params)
    render json: @wordAnswer
  end

  private
    def set_wordAnswer
      @wordAnswer = WordAnswers.find(params[:id])
    end

    def wordAnswer_params
      params.permit(:word, :played, :id)
    end
end
