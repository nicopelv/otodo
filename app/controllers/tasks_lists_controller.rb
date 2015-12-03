class TasksListsController < ApplicationController
  before_action :set_tasks_list, only: [:show, :edit, :update, :destroy]

  # GET /tasks_lists
  # GET /tasks_lists.json
  def index
    @tasks_lists = TasksList.all
  end

  # GET /tasks_lists/1
  # GET /tasks_lists/1.json
  def show
  end

  # GET /tasks_lists/new
  def new
    @tasks_list = TasksList.new
  end

  # GET /tasks_lists/1/edit
  def edit
  end

  # POST /tasks_lists
  # POST /tasks_lists.json
  def create
    @tasks_list = TasksList.new(tasks_list_params)

    respond_to do |format|
      if @tasks_list.save
        format.html { redirect_to @tasks_list, notice: 'Tasks list was successfully created.' }
        format.json { render :show, status: :created, location: @tasks_list }
      else
        format.html { render :new }
        format.json { render json: @tasks_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks_lists/1
  # PATCH/PUT /tasks_lists/1.json
  def update
    respond_to do |format|
      if @tasks_list.update(tasks_list_params)
        format.html { redirect_to @tasks_list, notice: 'Tasks list was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasks_list }
      else
        format.html { render :edit }
        format.json { render json: @tasks_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks_lists/1
  # DELETE /tasks_lists/1.json
  def destroy
    @tasks_list.destroy
    respond_to do |format|
      format.html { redirect_to tasks_lists_url, notice: 'Tasks list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks_list
      @tasks_list = TasksList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasks_list_params
      params.require(:tasks_list).permit(:title, :description)
    end
end
