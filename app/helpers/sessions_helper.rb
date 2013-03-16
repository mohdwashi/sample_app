module SessionsHelper

	def sign_in(user)
		cookies.permanents[:remember_token] = user.remember_token
		self.current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user(user)
		@current_user = user
	end

	def sogn_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end
end
