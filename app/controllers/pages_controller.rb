#MyApp/app/controllers/pages_controller.rb
class PagesController < ApplicationController

  def search
      if params[:search].blank?
        redirect_to(root_path, alert: "Empty field!") #and return
      else

        @parameter = params[:search].downcase
        # @results = Post.all.where("lower(title) LIKE :search", search: @parameter)
        @results =Post.where("title ILIKE ?", "%#{params[:search].downcase}%")
      end

  end


end