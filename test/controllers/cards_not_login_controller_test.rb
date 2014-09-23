require 'test_helper'

class CardsNotLoginControllerTest < ActionController::TestCase
  setup do
    @controller = CardsController.new

    @user = FactoryGirl.create(:user)

    @card = FactoryGirl.build(:card)
    @card.user = @user
    @card.save
  end

  test "should get public" do
    get :public
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should not get index" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      get :index
    end
  end

  test "should not get new" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      get :new
    end
  end

  test "should not create card" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      post :create, card: { answer: @card.answer, question: @card.question }
    end
  end

  test "should not show card" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      get :show, id: @card
    end
  end

  test "should not get edit" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      get :edit, id: @card
    end
  end

  test "should not update card" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      patch :update, id: @card, card: { answer: @card.answer, question: @card.question }
    end
  end

  test "should destroy card" do
    assert_raise ArgumentError, 'uncaught throw :warden' do
      delete :destroy, id: @card
    end
  end
end
