class Application
  def call(env)
    req = Rack::Request.new(env)

    if req.path.match(/hello/) #regex
      send_hello

    elsif req.path.match("/guitars") # regex as a string
      # get guitars from DB
      #serve to client as json 
      send_guitars

    elsif req.path.match("/customer") && req.get?
      name = req.path.split("/").last.gsub!('%20', ' ')
     
        if Customer.exists?(:name => name)
          customer_inst = Customer.where(name: name)
          # binding.pry
          return [200, { "Content-Type" => "application/json" }, [ customer_inst.to_json ]]
          
        else
          return [200, { "Content-Type" => "application/json" }, [ { :message => "null" }.to_json ]]
        end

    # elsif req.path.match("/customer") && req.patch?
    #   name = req.path.split("/").last.gsub!('%20', ' ')
    #   customer_inst = Customer.where(name: name)
    #   customer_inst_id = customer_inst.id
    #   # customer_inst = Customer.where(id: id)
    #   guitar_hash = JSON.parse(req.body.read)
    #   binding.pry
    
    else
      send_not_found
    end
  end

  private

  def send_guitars
    guitar_inst_arr = Guitar.all
    return [200, { "Content-Type" => "application/json" }, [ guitar_inst_arr.to_json ]]
  end
  
  def send_customer
    customer_inst_arr = Customer.all

    return [200, { "Content-Type" => "application/json" }, [ customer_inst_arr.to_json ]]
  end

  def send_hello
    return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
  end

  def send_not_found
    return [404, {}, ["Path not found!!!"]]
  end
end