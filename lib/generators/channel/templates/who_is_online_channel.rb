class WhoIsOnlineChannel < ApplicationCable::Channel
  def subscribed
    stream_from "who_is_online_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end