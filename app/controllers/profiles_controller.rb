class ProfilesController < ApplicationController


	def new
		@s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
		@user = current_user
		@profile = @user.build_profile
	end

	def edit
		# @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
		@user = current_user
		@profile = Profile.find(params[:id])
	end

	def create
		@user = current_user
	  @profile = @user.create_profile(profile_params)

	  respond_to do |format|
	    if @profile.save
	      format.html { redirect_to @user, notice: 'Section was successfully created.' }
	      format.json { render :show, status: :created, location: @user }
	    else
	      format.html { render :new }
	      format.json { render json: @user.errors, status: :unprocessable_entity }
	    end
	  end
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

private

	def user_params
    params.require(:profile).permit(:first_name, :last_name, :user_id, :location, :avatar)
  end

end