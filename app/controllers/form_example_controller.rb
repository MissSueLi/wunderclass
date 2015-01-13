class FormExampleController < ApplicationController
  def form_input
  end

  def form_output
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  render "form_result"
  	ActionMailer::Base.mail(:from => 'no-reply@example.com', 
	  	:to => @email, 
	  	:subject => "A new contact form message", 
	  	:body => @message).deliver
  end
end