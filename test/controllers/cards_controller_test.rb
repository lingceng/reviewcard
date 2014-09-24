require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @user = create(:user)
    sign_in(@user)

    @card = build(:card)
    @card.user = @user
    @card.save
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { answer: @card.answer, question: @card.question }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { answer: @card.answer, question: @card.question }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end

  test "should get public" do
    sign_out @user
    get :public
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should not get index" do
    sign_out @user
    get :index
    assert_redirected_to new_user_session_path
  end

  test "should not get new" do
    sign_out @user
    get :new
    assert_redirected_to new_user_session_path
  end

  test "should not create card" do
    sign_out @user
    post :create, card: { answer: @card.answer, question: @card.question }
    assert_redirected_to new_user_session_path
  end

  test "should not show card" do
    sign_out @user
    get :show, id: @card
    assert_redirected_to new_user_session_path
  end

  test "should not get edit" do
    sign_out @user
    get :edit, id: @card
    assert_redirected_to new_user_session_path
  end

  test "should not update card" do
    sign_out @user
    patch :update, id: @card, card: { answer: @card.answer, question: @card.question }
    assert_redirected_to new_user_session_path
  end

  test "should not destroy card" do
    sign_out @user
    delete :destroy, id: @card
    assert_redirected_to new_user_session_path
  end

end
