class User < ActiveRecord::Base
	def index
	  @users = User.scoped.paginate(page: params[:page], per_page: params[:per_page] || 8)
	  respond_to do |format|
	    format.html
	    format.js
	  end
	end
end
