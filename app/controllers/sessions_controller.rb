class SessionsController < ApplicationController

	def new

	end
	
	def forget
	  render 'forget'
	end
	
	def temporary_password
	  email = params[:email]
	  temp_password =  (0...8).map { (65 + rand(26)).chr }.join
	  user = User.find_by(email: params[:email])
    if user
	    Pony.mail({
            :to => email,
  			:via => :smtp,
  			:subject => 'Reset your password in Twitter',
  			:body => 'Your temporary password is: ' + temp_password + ' Please log in and reset your password',
  			:via_options => {
    		:address              => 'smtp.gmail.com',
    		:port                 => '587',
    		:enable_starttls_auto => true,
    		:user_name            => 'bofuuchicago',
    		:password             => 'Fubo3826',
    		:authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    		:domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  			}
		  })
	  	user.password = temp_password
	  	user.save
	  	redirect_to "#", notice: "A temporary password has been sent to your email address"
		else
		  redirect_to "#", notice: "no such user"
		end
	end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.authenticate(params[:password])
        session["user_id"] = user.id
        session["username"] = user.username
        session["user_image"] = user.image
        redirect_to root_url
      else
        redirect_to root_url, notice: "Password error."
      end
    else
      redirect_to root_url, notice: "Invalid Username."
    end
  end

  def destroy
		session.delete :user_id
		redirect_to root_url, notice: "Thanks for visiting. Bye!" 	
  end
end