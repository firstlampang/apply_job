class FittingController < ApplicationController
  def index

    file = File.read('Qj.json')
    # data_hash = JSON.parse(file)

    # @data_hash = data_hash
    @file = file

    puts file


  end
end
