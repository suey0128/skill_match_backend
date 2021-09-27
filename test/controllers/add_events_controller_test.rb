require "test_helper"

class AddEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_event = add_events(:one)
  end

  test "should get index" do
    get add_events_url, as: :json
    assert_response :success
  end

  test "should create add_event" do
    assert_difference('AddEvent.count') do
      post add_events_url, params: { add_event: { event_id: @add_event.event_id, job_seeker_id: @add_event.job_seeker_id } }, as: :json
    end

    assert_response 201
  end

  test "should show add_event" do
    get add_event_url(@add_event), as: :json
    assert_response :success
  end

  test "should update add_event" do
    patch add_event_url(@add_event), params: { add_event: { event_id: @add_event.event_id, job_seeker_id: @add_event.job_seeker_id } }, as: :json
    assert_response 200
  end

  test "should destroy add_event" do
    assert_difference('AddEvent.count', -1) do
      delete add_event_url(@add_event), as: :json
    end

    assert_response 204
  end
end
