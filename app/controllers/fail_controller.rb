class FailController < ApplicationController
  skip_before_action :verify_authenticity_token

  def divide_by_zero
    begin
      1 / 0
    rescue ZeroDivisionError => exception
      Sentry.capture_exception(exception)
    end
    Sentry.capture_message("Deliberate divide by zero error")
  end

  def get_message
    
  end 
  
  def post_message
    if (not params[:message] == "")
      Sentry.capture_message(params[:message])
      @message = params[:message]
    elsif (not params[:message64] == "")
      Sentry.capture_message(Base64.decode64(params[:message64]))
      @message = params[:message64]
    end
    render template: "fail/post_message"
  end

  def attachment
    Sentry.add_attachment(filename: 'XSS.html', bytes: '<SCRIPT>alert(\"XSS in attachment\")</SCRIPT>', content_type: 'text/html')
    Sentry.capture_message("Attachment Test")
    render template: "fail/post_message"
  end
end
