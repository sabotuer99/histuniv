require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do
    
    question = Question.new email: 'author@question.com', body: 'a test question'
    answer = Answer.new email: 'author@answer.com', body: 'a test answer'
    
    question.answers << answer
    
    mail = MainMailer.notify_question_author(answer)
    
    assert_equal "New answer to your question", mail.subject
    assert_equal ["author@question.com"], mail.to
    assert_equal ["author@answer.com"], mail.from
    assert_match "a test answer", mail.body.encoded
  end

end
