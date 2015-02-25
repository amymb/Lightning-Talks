class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      flash[:notice] = "Talk was successfully added"
      redirect_to talks_path
    else
      render :new
    end
  end

  def show
    @talk = Talk.find(params[:id])
  end

  def edit
    @talk = Talk.find(params[:id])
  end

  def update
    @talk = Talk.find(params[:id])
    if @talk.update(talk_params)
      redirect_to talk_path
    else
      render :edit
    end
  end

  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy
    flash[:notice] = "Talk was successfully deleted"
    redirect_to talks_path
  end

  def talk_params
    params.require(:talk).permit(:speaker, :topic, :date, :time)
  end
  ``
end
