class WorkflowsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @workflow = Workflow.new
  end
end
