require "sinatra"
require "./email_sender"
require "./survey"

get "/" do
  erb :index, layout: :default_template
end

get "/hi/:name" do |name|
  @name = name
  erb :hi, layout: :default_template
end

get "/contact" do
  erb :contact, layout: :default_template
end

post "/contact" do
  EmailSender.send(params)
  "Thank you for contacting us"
end

get "/survey" do
  erb :survey, layout: :default_template
end

post "/survey" do
  deadline          = params[:deadline]
  consider_yourself = params[:consider_yourself]
  interest          = params[:interest]

  survey = Survey.new(deadline, consider_yourself, interest)
  survey.survey_results
end









