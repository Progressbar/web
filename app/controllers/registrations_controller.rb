class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      redirect_to('/join?registered=1', :notice => "Registration was successfully created.")
    else
      flash[:alert] = "You must fill all fields."
      render '/pages/join'
    end
  end
end
