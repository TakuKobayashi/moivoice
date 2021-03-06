# == Schema Information
#
# Table name: live_stream_comments
#
#  id                 :integer          not null, primary key
#  twitcast_user_id   :string(255)      not null
#  twitcast_social_id :string(255)
#  live_stream_id     :integer          not null
#  duration           :integer          default("0"), not null
#  message            :text(65535)
#  twitter_status_id  :string(255)
#  voice_path         :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_live_stream_comments_on_duration           (duration)
#  index_live_stream_comments_on_live_stream_id     (live_stream_id)
#  index_live_stream_comments_on_twitcast_user_id   (twitcast_user_id)
#  index_live_stream_comments_on_twitter_status_id  (twitter_status_id)
#

require 'test_helper'

class LiveStreamCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
