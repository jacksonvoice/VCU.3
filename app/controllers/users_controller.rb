class UsersController < ApplicationController
load_and_authorize_resource

	def new
		@s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
	end

	def index
		@user = User.all
	end
end
