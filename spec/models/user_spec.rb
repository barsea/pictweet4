require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
      expect(@user).to be_valid
    end
    it 'nicknameが空では登録できない' do
      # user = User.new(nickname: '', email: 'test@example', password: '000000', password_confirmation: '000000')
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      # user = User.new(nickname: 'test', email: '', password: '000000', password_confirmation: '000000')
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
  end
end
