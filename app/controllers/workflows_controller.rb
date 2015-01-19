class WorkflowsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_workflow, only: [:show]
  before_action :set_workflows, only: [:index]

  def index
    respond_to do |format|
      format.html
      format.json { render json: @workflows }
    end
  end

  def new
    @workflow = Workflow.new
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @workflow }
    end
  end

  def create
    @workflow = Workflow.new(workflow_params)
    @workflow.user_id = current_user.id
    if @workflow.save
      redirect_to @workflow
    else
      notice "Something went wrong"
      redirect_to :back, status: 422
    end
  end

  private

  def workflow_params
    params.require(:workflow).permit(:title, :description, :git_repository_url)
  end

  def set_workflow
    @workflow = Workflow.find(params[:id])
  end

  def set_workflows
    @workflows = Workflow.all
  end
end
