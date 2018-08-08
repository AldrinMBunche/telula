require 'test_helper'

class LearnerEventsControllerTest < ActionController::TestCase
  setup do
    @learner_event = learner_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learner_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learner_event" do
    assert_difference('LearnerEvent.count') do
      post :create, learner_event: { AGREEMENT_NO: @learner_event.AGREEMENT_NO, AGREEMENT_ON: @learner_event.AGREEMENT_ON, BATCH_NO: @learner_event.BATCH_NO, CANCELATION_ON: @learner_event.CANCELATION_ON, CERTIFICATE_ISSUED: @learner_event.CERTIFICATE_ISSUED, CERTIFICATE_ISSUED_BY: @learner_event.CERTIFICATE_ISSUED_BY, CERTIFICATE_NO: @learner_event.CERTIFICATE_NO, CERTIFICATE_NOTES: @learner_event.CERTIFICATE_NOTES, CERTIFICATE_ON: @learner_event.CERTIFICATE_ON, EYE: @learner_event.EYE, HQ: @learner_event.HQ, ID_DOC: @learner_event.ID_DOC, LEARNER_ID: @learner_event.LEARNER_ID, LOG: @learner_event.LOG, MACHINE_RESTRICTION: @learner_event.MACHINE_RESTRICTION, MED: @learner_event.MED, OLD_BATCH_NO: @learner_event.OLD_BATCH_NO, PRDP: @learner_event.PRDP, PRI_OR: @learner_event.PRI_OR, REGISTRATION_NO: @learner_event.REGISTRATION_NO, TRADE_TEST_ON: @learner_event.TRADE_TEST_ON, TRAINING_ID: @learner_event.TRAINING_ID }
    end

    assert_redirected_to learner_event_path(assigns(:learner_event))
  end

  test "should show learner_event" do
    get :show, id: @learner_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learner_event
    assert_response :success
  end

  test "should update learner_event" do
    patch :update, id: @learner_event, learner_event: { AGREEMENT_NO: @learner_event.AGREEMENT_NO, AGREEMENT_ON: @learner_event.AGREEMENT_ON, BATCH_NO: @learner_event.BATCH_NO, CANCELATION_ON: @learner_event.CANCELATION_ON, CERTIFICATE_ISSUED: @learner_event.CERTIFICATE_ISSUED, CERTIFICATE_ISSUED_BY: @learner_event.CERTIFICATE_ISSUED_BY, CERTIFICATE_NO: @learner_event.CERTIFICATE_NO, CERTIFICATE_NOTES: @learner_event.CERTIFICATE_NOTES, CERTIFICATE_ON: @learner_event.CERTIFICATE_ON, EYE: @learner_event.EYE, HQ: @learner_event.HQ, ID_DOC: @learner_event.ID_DOC, LEARNER_ID: @learner_event.LEARNER_ID, LOG: @learner_event.LOG, MACHINE_RESTRICTION: @learner_event.MACHINE_RESTRICTION, MED: @learner_event.MED, OLD_BATCH_NO: @learner_event.OLD_BATCH_NO, PRDP: @learner_event.PRDP, PRI_OR: @learner_event.PRI_OR, REGISTRATION_NO: @learner_event.REGISTRATION_NO, TRADE_TEST_ON: @learner_event.TRADE_TEST_ON, TRAINING_ID: @learner_event.TRAINING_ID }
    assert_redirected_to learner_event_path(assigns(:learner_event))
  end

  test "should destroy learner_event" do
    assert_difference('LearnerEvent.count', -1) do
      delete :destroy, id: @learner_event
    end

    assert_redirected_to learner_events_path
  end
end
