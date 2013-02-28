class HomeController < ApplicationController
  def index
  end

  def cause_server_side_exception
    uh_oh = this_variable_has_not_been_set 
  end
end
