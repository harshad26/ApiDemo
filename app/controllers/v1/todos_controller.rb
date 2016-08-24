module V1
	class TodosController < ApplicationController

		def index
		 	file = File.read("#{Rails.root}/public/v1/prototype/data/online_users.json")
  		data = JSON.parse(file)
			render json: {data: data}
		end
	end
end
