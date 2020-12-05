class ApplicationMailer < ActionMailer::Base
  default to: 'from@musicCollection.com', from: 'from@musicCollection.com'
  layout 'mailer'
end
