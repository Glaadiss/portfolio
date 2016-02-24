class AppsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :destroy, :edit]
	before_action :find_app, only: [ :destroy, :edit, :show, :update]
  def index
  	@apps = App.all
  end

  def new 
  	@app = App.new
  end

  def create
  	@app = App.new(new_params)
  	if @app.save
  		flash[:success] = "app created"
  		redirect_to root_path
  	else
  		render('new')
  	end
  end

  def edit

  end

  def update
	if @app.update(new_params)
		flash[:success] = "app updated"
		redirect_to root_path
	else
		render 'edit'
	end 	
  end


  def destroy
  	@app.destroy
  	respond_to do |format|
  		format.html { redirect_to root_path }
  		format.js 
  		format.json 
  	end
	
  end

  def new_params
  	params.require(:app).permit(:name, :description, :link, :git, :image, :category )
  end

  def mail

  	name = params[:name]
  	email = params[:email]
  	phone = params[:phone]
  	message = params[:message]
	Contact.contact_mail(name,email,phone,message).deliver_now
	redirect_to root_path

  end

  def find_app
  	@app = App.find(params[:id])
  end


end
