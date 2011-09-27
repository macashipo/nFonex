class ParticipantController < ApplicationController
  def index
   @participant= Participant.all
  end

  def start
  	  @participant = Participant.new
  end

  def go
  	  @participant = Campaign.find(params[:id])
  end

  def create
    @participant = Participant.new(params[:participant])
    if @participant.save
      redirect_to @participant, :notice => "Successfully created campaign."
    else
      render :action => 'new'
    end
  end
  
  def finish
  end

  def result
  end

end
