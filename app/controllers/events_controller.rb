class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @user = User.find(params[:id])
    if current_user.groups.where(event_id: @event.id).present?
      @group = current_user.groups.where(event_id: @event.id).first
    else
      @group = current_user.groups.new
    end
  end

  def book

    event = Event.find(group_params[:event_id])

    if request.request_method == "POST"
      group = current_user.groups.create!(group_params)
    elsif request.request_method == "PATCH"
      group = current_user.groups.find(group_params[:id])      
      original_attendees = group.no_of_attendees
      group.update(group_params)
    end

    if event.remaining < 0
      flash[:danger] = "Event is full, sorry!"

      if request.request_method == "POST"
        current_user.groups.delete(group)
      elsif request.request_method == "PATCH"
        group.update(no_of_attendees: original_attendees)
      end
      
      redirect_to events_path
    else
      group.save

      flash[:success] = "Thanks for attending!"
      redirect_to events_path
    end
  end
  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.new(event_params)


    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :date, :description, :allocation, :user_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:id, :event_id, :no_of_attendees)
    end
end
