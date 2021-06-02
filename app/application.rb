class Application
  def call(env)
    req = Rack::Request.new(env)

    # binding.pry

    if req.path.match(/hello/) #regex
      send_hello
    elsif req.path.match("/guitars") # regex as a string
      # get toys from DB
      #serve to client as json 
      send_guitars
    elsif req.path.match("/customers") # regex as a string
      # get toys from DB
      #serve to client as json 
      send_guitars
    else
      send_not_found
    end
  end

  private
  
  def send_customers
    customer_inst_arr = Customer.all
    return [200, { "Content-Type" => "application/json" }, [ customer_inst_arr.to_json ]]
  end

  def send_guitars
    guitar_inst_arr = Guitar.all
    return [200, { "Content-Type" => "application/json" }, [ guitar_inst_arr.to_json ]]
  end

  # def customer
  #   Customer.where(name: 'Ricky Barton')
  # end

  def send_hello
    return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
  end

  def send_not_found
    return [404, {}, ["Path not found!!!"]]
  end
end