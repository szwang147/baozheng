# == Schema Information
#
# Table name: requests
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  title          :string
#  description    :text
#  before_picture :string
#  dream_picture  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  aasm_state     :string           default("request_made")
#  token          :string
#  winner         :integer
#
# Indexes
#
#  index_requests_on_aasm_state  (aasm_state)
#

require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
