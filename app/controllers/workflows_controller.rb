class WorkflowsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_workflow, only: [:show]

  def index
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

  def set_workflow
    @workflow = Workflow.find(params[:id])
  end
end
