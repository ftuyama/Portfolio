require 'test_helper'

class ContactTest < ActionMailer::TestCase
  test "email_me" do
    mail = Contact.email_me
    assert_equal "Email me", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
