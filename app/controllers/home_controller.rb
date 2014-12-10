class HomeController < ApplicationController
  def index
  end

  def cause_server_side_exception
    uh_oh = this_variable_has_not_been_set
  end

  def cause_another_exception
    x = nil
    x[:foo]
  end

  def cause_critical
    result = Rollbar.critical("Hull breach!", :shield_level => "#{Random.rand(25)} percent")
    if result.is_a?(Hash)
      puts "it's a hash"
      @uuid = result[:uuid]
    end
  end
end
