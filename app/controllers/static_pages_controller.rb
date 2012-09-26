class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def who_we_are
	@email_for_gravatar = Email.all.map {|el| el.email }	
  end
end
