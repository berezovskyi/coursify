require 'test_helper'

class Web::Companies::Admin::Lessons::AttendantsControllerTest < ActionController::TestCase
  setup do
    user = create :user
    sign_in user

    @company = create :company, creator: user
    @course = create :offline_course, company: @company
    @lesson = create "course/lesson", course: @course

    subdomain @company.login
  end

  test "should get index" do
    get :index, lesson_id: @lesson.id
    assert_response :success
  end

end
