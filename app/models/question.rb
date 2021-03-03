# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  question   :json
#  version    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
    has_many :answer, dependent: :destroy
end
