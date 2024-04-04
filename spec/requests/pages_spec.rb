require "rails_helper"

RSpec.describe "Pages" do
  describe "GET /" do
    context "when signed in" do
      let(:user) { users(:test) }

      before { sign_in(user) }

      it "returns http success" do
        get "/"
        expect(response).to have_http_status(:success)
      end

      it "returns orange starter home page" do
        get "/"
        expect(response.body).to include("Orange Starter")
      end
    end

    context "when signed out" do
      it "redirects to sign in" do
        get "/"
        expect(response.body).to include("Login")
      end

      it "redirects to the login page when accessing a protected page" do
        get "/protected"
        expect(response).to redirect_to("/users/sign_in")
      end
    end
  end
end
