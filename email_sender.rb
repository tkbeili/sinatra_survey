require "pony"

class EmailSender


  def self.send(params)
   Pony.mail(to: "tam@codecore.ca",
             from: params[:email],
             reply_to: params[:email],
             subject: "You got message for #{params[:department]} department",
             body: params[:message],
             via: :smtp,
             via_options: {
                address:              "smtp.gmail.com",
                port:                 "587",
                enable_starttls_auto: true,
                user_name:             "answerawesome",
                password:               "Sup3r$ecret",
                authentication:         :plain,
                domain:                 "localhost"
              })
  end

end