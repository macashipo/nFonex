class CampaignsController < ApplicationController
	before_filter :authenticate_user! , :except => [:destroy]                   
  def index
    #@campaigns_all = Campaign.find :all, :limit => 5   
    #@products = Product.order("created_at DESC").page(params[:page]).per(8)  
    #@campaigns = Campaign.paginate(:page => params[:page], :per_page=>8, :order => "created_at DESC")
    @campaigns = Campaign.order("created_at DESC").page(params[:page]).per(8)
    if params[:status_id]
    	    @campaigns =Campaign.where(:status_id => params[:status_id]).order("created_at DESC").page(params[:page]).per(8)
	end
	if params[:category_id]
		@campaigns =Campaign.where(:category_id => params[:category_id]).order("created_at DESC").page(params[:page]).per(8)
	end
  end

  def show
    @campaign = Campaign.find(params[:id])
  end
  
  def start
    @campaign = Campaign.find(params[:id])
  end
  
  def go
    @campaign = Campaign.all
    @time_now = Time.now
  end

  def new
    @campaign = Campaign.new
    3.times do
    	    question = @campaign.questions.build
    	    4.times { question.answers.build }
  end
  end

  def create
    @campaign = current_user.campaigns.new(params[:campaign])    
    @campaign.questions.each_with_index do |question,index|
    	    question.url_question = "#{RAILS_ROOT}/public/audios/q#{Question.last.id+index+1}.wav"
    	    question.answers.each_with_index do |answer,index|
    	    	    answer.url_answer = "#{RAILS_ROOT}/public/audios/a#{Answer.last.id+index+1}.wav"
    	    end
    	    end
    if @campaign.save
    	    
      redirect_to @campaign, :notice => "Successfully created campaign."
    else
      render :action => 'new'
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
    @campaign.questions.each_with_index do |question,index|
    	    question.url_question = "#{RAILS_ROOT}/public/audios/q#{question.id}.wav"
    	    question.answers.each do |answer|
    	    	    answer.url_answer = "#{RAILS_ROOT}/public/audios/a#{answer.id}.wav"
    	    end
    	    end
  end

  def update
    @campaign = Campaign.find(params[:id])    
    if @campaign.update_attributes(params[:campaign])
      redirect_to @campaign, :notice  => "Successfully updated campaign."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    	redirect_to root_path, :notice => "Successfully destroyed campaign."
  end
end
