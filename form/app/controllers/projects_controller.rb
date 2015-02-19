class ProjectsController < ApplicationController
	def index
		@projects = Project.all
		@users = User.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params);

		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def subscribe
		p = Project.find(params[:id])
		u = User.find_by(name: params[:name],pwd: params[:pwd])

		if !u.blank? && p.check_availability && (u.project.blank?)
			u.project = p
			u.save
			redirect_to p, notice: "Subscribed successfully"
		else
			redirect_to project_path(p), notice: "password is not correct or project is closed"
		end
	end

	def show
		@users = User.all
		@project= Project.find(params[:id])
	end

	private
	def project_params
		params.require(:project).permit(:name,:taken)
	end
end