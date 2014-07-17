module ControllerMacros
  # def login_user
  #   before(:each) do
  #     @request.env["devise.mapping"] = Devise.mappings[:user]
  #     user = FactoryGirl.create(:user)
  #     user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
  #     sign_in user
  #   end
  # end

  def signed_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    sign_in @user # method from devise:TestHelpers
  end

end