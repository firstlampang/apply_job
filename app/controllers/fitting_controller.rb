class FittingController < ApplicationController

  skip_before_action :verify_authenticity_token


  def index
    # save

    # @file = File.read('QuestionVer2.json')
    # data_hash = JSON.parse(@file)
    # @question = Question.new(question: data_hash, active: true, version: 6)
    # @question.save
    # puts "file :: #{@file}"

    # @data_hash = data_hash

    @file = Question.first
    # puts @file.question
    # data_hash = JSON.parse()

   
    # puts file
    # puts "test time #{Time.now}"


  end

  def create

    @question_id = params[:question_id]

    json = params.permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7,
        :question8, :question9, :question11, :question14, :question15, :question17, :question18,
        :question19, :question20, :question21, :question23, :star24, :question25,
        :question26, :question27, :question28, :question29, :question30, :question31, :question32, :question33,
        :question34, :question35, :question36, :question37, :question38, :question39, :question40, :question41, :star42,
        question10: [],question12: [], question13: [], question16: [], question22: [])
    
    puts json
    @answer = Answer.new(answer: json, apply_date: Time.now, name: params[:question1], question_id: @question_id)

    data_hash = JSON.parse(json.to_json)
    File.write('./sample-data.json', JSON.dump(data_hash))
    
    @answer.save

    redirect_to root_path
  end
  

end
