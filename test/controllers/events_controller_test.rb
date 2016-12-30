require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { address_1: @event.address_1, city: @event.city, description: @event.description, end_at: @event.end_at, start_at: @event.start_at, state: @event.state, title: @event.title, zip: @event.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { address_1: @event.address_1, city: @event.city, description: @event.description, end_at: @event.end_at, start_at: @event.start_at, state: @event.state, title: @event.title, zip: @event.zip } }, as: :json
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event), as: :json
    end

    assert_response 204
  end
end
