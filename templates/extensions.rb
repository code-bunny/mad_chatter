#
# Simple Mad Chatter Extensions
#
# This file provides you with an easy way to extend Mad Chatter
# and react to different chat messages.
#
# Example Extension:
#
  on_message %r{ hey andrew: (.+) } do |regex_capture|
    send_status_message "Someone is talking to Andrew"
    send_message "message: #{regex_capture}"
    stop_message_handling
  end


# on_message %r{^/youtube http://youtu.be/(.*)$} do |youtube_id|
#   send_message "<iframe width='560' height='315' src='http://www.youtube.com/embed/#{youtube_id}' frameborder='0' allowfullscreen></iframe>"
#   stop_message_handling
# end
# 
# on_message %r{^/alert (.*)$} do |alert_message|
#   send_action 'show_alert', alert_message
#   stop_message_handling
# end
# 
# on_message %r{^/earthquake$} do
#   send_status_message 'Someone has just caused an earthquake!'
#   send_action 'earthquake'
#   stop_message_handling
# end