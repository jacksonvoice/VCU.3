class UsersController < ApplicationController
load_and_authorize_resource


	def index
		@user = User.all
	end

	def edit
		@s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
		@user = current_user
		@profile = Profile.find(params[:id])
	end

	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end

	def show
		@user = current_user
		@profile = Profile.find(params[:id])
	end






private 

    def user_params
      params.require(:user).permit(:name, profile_attributes: [:id, :first_name, :last_name, :location, :avatar, :user_id] )
    end
end