class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    
    @tasks = Task.all
    @categories = Category.find(params[:category_id])
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    
    
  end

  # GET /tasks/new
  def new
    
    @categories = current_user.categories.find(params[:category_id])
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
   @categories = Category.find(params[:category_id])
   @task = Task.find(params[:id])
  end

  # POST /tasks or /tasks.json
  def create
    byebug
    @categories = current_user.categories.find(params[:category_id])
    @category = current_user.categories.find(params[:category_id])
    @task = @category.tasks.build(task_params)
    @task.user_id = current_user.id
    

      if @task.save
       
        redirect_to categories_path
      else
        render :new
      end
    
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    
      if @task.update(task_params)
        redirect_to categories_path
      else
        render :new
      end
    
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy
   redirect_to categories_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
     @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      
      params.require(:task).permit(:taskname, :taskbody, :tasktime)
    end
end
