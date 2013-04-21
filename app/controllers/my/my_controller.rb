class My::MyController < ApplicationController
  before_filter :check_auth

  private

  def check_auth
    unless current_user || !current_user.has_role?(:teacher)
      redirect_to root_path
    end
  end
end