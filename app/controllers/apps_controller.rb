class AppsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :delete]
  def index
  	@apps = App.all
  end

  def new 
  	@app = App.new
  end

  def create
  	@app = App.new(new_params)
  	if @app.save
  		redirect_to root_path
  	else
  		render('new')
  	end
  end


  def destroy
  	@app.destroy
	redirect_to root_path
  end

  def new_params
  	params.require(:app).permit(:name, :description, :link, :git, :image, :category )
  end

  def mail
  	redirect_to root_path

  	name = params[:name]
  	email = params[:email]
  	phone = params[:phone]
  	message = params[:message]
	contact.contact_mail(name,email,phone,message).deliver_now
	

  end


end
