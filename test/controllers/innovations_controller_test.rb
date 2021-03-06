require 'test_helper'

class InnovationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @innovation = innovations(:one)
  end

  test "should get index" do
    get innovations_url
    assert_response :success
  end

  test "should get new" do
    get new_innovation_url
    assert_response :success
  end

  test "should create innovation" do
    assert_difference('Innovation.count') do
      post innovations_url, params: { innovation: { aimsobs: @innovation.aimsobs, author: @innovation.author, collaboration: @innovation.collaboration, context: @innovation.context, date: @innovation.date, ip: @innovation.ip, learningpoints: @innovation.learningpoints, lksSearch: @innovation.lksSearch, methods: @innovation.methods, orgaim: @innovation.orgaim, summary: @innovation.summary, tags: @innovation.tags, title: @innovation.title } }
    end

    assert_redirected_to innovation_url(Innovation.last)
  end

  test "should show innovation" do
    get innovation_url(@innovation)
    assert_response :success
  end

  test "should get edit" do
    get edit_innovation_url(@innovation)
    assert_response :success
  end

  test "should update innovation" do
    patch innovation_url(@innovation), params: { innovation: { aimsobs: @innovation.aimsobs, author: @innovation.author, collaboration: @innovation.collaboration, context: @innovation.context, date: @innovation.date, ip: @innovation.ip, learningpoints: @innovation.learningpoints, lksSearch: @innovation.lksSearch, methods: @innovation.methods, orgaim: @innovation.orgaim, summary: @innovation.summary, tags: @innovation.tags, title: @innovation.title } }
    assert_redirected_to innovation_url(@innovation)
  end

  test "should destroy innovation" do
    assert_difference('Innovation.count', -1) do
      delete innovation_url(@innovation)
    end

    assert_redirected_to innovations_url
  end
end
