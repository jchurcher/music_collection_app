require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
    mail = ContactMailer.contact_email("John Smith", "JohnSmith@email.com", "01234567890", "Example email message")

    assert_equal ['from@musicCollection.com'], mail.to
    assert_equal ['from@musicCollection.com'], mail.from

    assert_emails 1 do
      mail.deliver_now
    end
  end

end
