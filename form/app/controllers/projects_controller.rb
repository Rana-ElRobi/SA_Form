class ProjectsController < ApplicationController
	def new
		
	end
	def create
		@project = Project.new(project_params);

		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end
	def show
		@project= Project.find(params[:id])
	end
private
	def project_params
		params.require(:project).permit(:name,:taken)
	end
end

end
