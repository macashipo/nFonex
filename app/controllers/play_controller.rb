class PlayController < ApplicationController
  def start
  	  @participant = Participant.new
  end

  def go  	  
    @participant = Participant.find(params[:id]) 
  end

  def finish
  end

  def create
    @participant = Participant.new(params[:participant])
    if @participant.save
      redirect_to @participant, :notice => "Successfully created campaign."
    else
      render :action => 'new'
    end
  end
  
  def result
  end

end
