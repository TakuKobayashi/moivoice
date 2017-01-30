# == Schema Information
#
# Table name: live_streams
#
#  id              :integer          not null, primary key
#  twitcas_user_id :integer          not null
#  movieid         :string(255)
#  live_url        :string(255)
#  live_title      :string(255)
#  thumbnail_url   :string(255)
#  started_at      :datetime
#  finished_at     :datetime
#  state           :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_live_streams_on_movieid          (movieid)
#  index_live_streams_on_twitcas_user_id  (twitcas_user_id)
#  moi_voice_live_finished_at_index       (started_at,finished_at)
#

require 'test_helper'

class LiveStreamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
