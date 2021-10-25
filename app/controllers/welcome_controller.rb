class WelcomeController < ApplicationController
  def index
    @user = current_user
    @review = Food.all
  end
end
