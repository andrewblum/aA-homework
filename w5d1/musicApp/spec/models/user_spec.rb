require 'rails_helper'

describe User do
  subject(:user) do
    FactoryBot.build(:user,
      email: "andrew@email.com",
      password: "good_password")
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }


  describe "#reset_session_token!" do
    it "sets a new session token on the user" do
      tok = user.session_token
      user.reset_session_token!
      expect(user.session_token).to_not eq(tok)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end




  describe "#is_password?" do
    it "verifies a password is correct" do
      expect(user.is_password?("good_password")).to be true
    end

    it "verifies a password is not correct" do
      expect(user.is_password?("dkjfandjfjff")).to be false
    end
  end

  describe ".find_by_credentials" do
    before { user.save! }

    it "returns user given good credentials" do
      expect(User.find_by_credentials("andrew@email.com", "good_password")).to eq(user)
    end
    

    it "returns nil given bad credentials" do
      expect(User.find_by_credentials("andrew@email.com", "sdafldfnd")).to eq(nil)
    end

  end

end
