class SurveysController < ApplicationController
  def index
  	@surveys = Survey.all
  end

  def new
  	@survey = Survey.new
  end

  def create
     @survey = Survey.new(params.require(:survey)
     							.permit(:name,:gender,:age,:diet,:cuisine,:lunch_time,
     									:lunch_meal,:dinner_time,:order_method,:device,
     									:cost,:cook_time,:delivery_time))
     if @survey.save
       flash[:notice] = "Thank you for taking the time to fill out the survey. The survey was saved, successfully! Have a wonderful day!"
       redirect_to root_path
     else
       flash[:error] = "There was an error saving the survey. Please try again."
       render :new
     end
   end
end