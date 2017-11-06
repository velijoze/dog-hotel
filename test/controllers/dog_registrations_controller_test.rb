require 'test_helper'

class DogRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_registration = dog_registrations(:one)
  end

  test "should get index" do
    get dog_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_registration_url
    assert_response :success
  end

  test "should create dog_registration" do
    assert_difference('DogRegistration.count') do
      post dog_registrations_url, params: { dog_registration: { address_1: @dog_registration.address_1, address_2: @dog_registration.address_2, birthday: @dog_registration.birthday, city: @dog_registration.city, comments: @dog_registration.comments, country: @dog_registration.country, dog_breed: @dog_registration.dog_breed, dog_daycare_history: @dog_registration.dog_daycare_history, dog_desription: @dog_registration.dog_desription, dog_name: @dog_registration.dog_name, dog_sex: @dog_registration.dog_sex, dog_weight: @dog_registration.dog_weight, email: @dog_registration.email, first_name: @dog_registration.first_name, last_name: @dog_registration.last_name, origin: @dog_registration.origin, phone: @dog_registration.phone, referral: @dog_registration.referral, second_dog_birthday: @dog_registration.second_dog_birthday, second_dog_breed: @dog_registration.second_dog_breed, second_dog_description: @dog_registration.second_dog_description, second_dog_name: @dog_registration.second_dog_name, second_dog_sex: @dog_registration.second_dog_sex, second_dog_weight: @dog_registration.second_dog_weight, second_owner_name: @dog_registration.second_owner_name, second_owner_phone: @dog_registration.second_owner_phone, state: @dog_registration.state, vet: @dog_registration.vet, zip: @dog_registration.zip } }
    end

    assert_redirected_to dog_registration_url(DogRegistration.last)
  end

  test "should show dog_registration" do
    get dog_registration_url(@dog_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_registration_url(@dog_registration)
    assert_response :success
  end

  test "should update dog_registration" do
    patch dog_registration_url(@dog_registration), params: { dog_registration: { address_1: @dog_registration.address_1, address_2: @dog_registration.address_2, birthday: @dog_registration.birthday, city: @dog_registration.city, comments: @dog_registration.comments, country: @dog_registration.country, dog_breed: @dog_registration.dog_breed, dog_daycare_history: @dog_registration.dog_daycare_history, dog_desription: @dog_registration.dog_desription, dog_name: @dog_registration.dog_name, dog_sex: @dog_registration.dog_sex, dog_weight: @dog_registration.dog_weight, email: @dog_registration.email, first_name: @dog_registration.first_name, last_name: @dog_registration.last_name, origin: @dog_registration.origin, phone: @dog_registration.phone, referral: @dog_registration.referral, second_dog_birthday: @dog_registration.second_dog_birthday, second_dog_breed: @dog_registration.second_dog_breed, second_dog_description: @dog_registration.second_dog_description, second_dog_name: @dog_registration.second_dog_name, second_dog_sex: @dog_registration.second_dog_sex, second_dog_weight: @dog_registration.second_dog_weight, second_owner_name: @dog_registration.second_owner_name, second_owner_phone: @dog_registration.second_owner_phone, state: @dog_registration.state, vet: @dog_registration.vet, zip: @dog_registration.zip } }
    assert_redirected_to dog_registration_url(@dog_registration)
  end

  test "should destroy dog_registration" do
    assert_difference('DogRegistration.count', -1) do
      delete dog_registration_url(@dog_registration)
    end

    assert_redirected_to dog_registrations_url
  end
end
