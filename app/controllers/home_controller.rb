class HomeController < ApplicationController
  def print_homepage
    render({:template => "dice_templates/homepage"})
  end
end
