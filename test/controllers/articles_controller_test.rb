require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  setup do
    @article = articles(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should get index" do
    get articles_url
    assert_response :success
    assert_equal "index", @controller.action_name
    # assert_equal "application/x-www-form-urlencoded", @request.media_type
    assert_match "Articles", @response.body
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { text: 'Rails is awesome!', title: 'Hello Rails' } }, headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials('kamalogudah', 'password') }
    end

    assert_redirected_to article_url(Article.last)
    assert_equal 'Article was successfully created.', flash[:notice]
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { title: 'Hello Rails' } }
    assert_redirected_to article_url(@article)
     # Reload association to fetch updated data and assert that title is updated.
    @article.reload
    assert_equal "Hello Rails", @article.title
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end
    assert_redirected_to articles_url
  end


test "ajax request" do
  article = articles(:one)
  get article_url(article), xhr: true
  # assert_equal 'hello world', @response.body
  # assert_equal "text/javascript", @response.media_type
end
end
