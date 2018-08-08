require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { account_no: @client.account_no, branch_id: @client.branch_id, business_reg_no: @client.business_reg_no, client_branch: @client.client_branch, client_id: @client.client_id, company_id: @client.company_id, contact_name: @client.contact_name, credit_limit: @client.credit_limit, fax_no: @client.fax_no, main_email: @client.main_email, name: @client.name, p_address_line_1: @client.p_address_line_1, p_address_line_2: @client.p_address_line_2, p_city: @client.p_city, p_country: @client.p_country, p_postal_code: @client.p_postal_code, p_province: @client.p_province, p_suburb: @client.p_suburb, payment_term: @client.payment_term, r_address_line_1: @client.r_address_line_1, r_address_line_2: @client.r_address_line_2, r_city: @client.r_city, r_country: @client.r_country, r_postal_code: @client.r_postal_code, r_province: @client.r_province, r_suburb: @client.r_suburb, sales_person: @client.sales_person, sdl_number: @client.sdl_number, tel_no: @client.tel_no, type: @client.type, wdyhau: @client.wdyhau }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { account_no: @client.account_no, branch_id: @client.branch_id, business_reg_no: @client.business_reg_no, client_branch: @client.client_branch, client_id: @client.client_id, company_id: @client.company_id, contact_name: @client.contact_name, credit_limit: @client.credit_limit, fax_no: @client.fax_no, main_email: @client.main_email, name: @client.name, p_address_line_1: @client.p_address_line_1, p_address_line_2: @client.p_address_line_2, p_city: @client.p_city, p_country: @client.p_country, p_postal_code: @client.p_postal_code, p_province: @client.p_province, p_suburb: @client.p_suburb, payment_term: @client.payment_term, r_address_line_1: @client.r_address_line_1, r_address_line_2: @client.r_address_line_2, r_city: @client.r_city, r_country: @client.r_country, r_postal_code: @client.r_postal_code, r_province: @client.r_province, r_suburb: @client.r_suburb, sales_person: @client.sales_person, sdl_number: @client.sdl_number, tel_no: @client.tel_no, type: @client.type, wdyhau: @client.wdyhau }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
