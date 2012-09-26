class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def who_we_are
  	@email_for_gravatar = %w[
	  	 sergey.berdnikovich
	  	 anastasia.charushina 
	  	 anton.dziga 
	  	 konstantin.ilchenko 
	  	 alexander.karmes 
	  	 stanislav.knyazev 
	  	 alexander.koshelapov 
	  	 yulia.oletskaya 
	  	 konstantin.savon 
	  	 anastasia.shaternik 
	  	 sergey.starikov 
	  	 viktor.voinilovich
	  	]
  end
end
