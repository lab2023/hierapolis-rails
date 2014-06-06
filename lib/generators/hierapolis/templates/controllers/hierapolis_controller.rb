class HierapolisController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout :set_layout

  def index

  end

  def dashboard

  end

  def tables

  end


  def forms

  end

  def forgot_password

  end

  def set_layout
    if params[:action] == 'index' || params[:action] == 'forgot_password'
      'hierapolis/login'
    else
      'hierapolis/application'
    end
  end
end