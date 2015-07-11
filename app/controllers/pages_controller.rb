class PagesController < ApplicationController
  def Home
  end

  def About
  end

  def FQA
  end
  
  def lottery
    render 'pages/lottery'
    @ball = (1..42).to_a.sample(6)
  end 
  
  def form2
    @name = params[:n]
    @bmi = params[:w].to_f/params[:h].to_f**2
  end
  
  
  def admin
    render layout: 'admin'
  end 
  
end
