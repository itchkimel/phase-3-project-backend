class Application
  def call(env)
    req = Rack::Request.new(env)

    if req.path.match("/guitars") && req.get?# regex as a string
      # get guitars from DB
      #serve to client as json 
      send_guitars

    elsif req.path.match("/customer") && req.get?
      name = req.path.split("/").last.gsub!('%20', ' ')

        if Customer.exists?(:name => name)
          customer_inst = Customer.find_by(name: name)
          cust_assc = customer_inst.to_json(:include => { :orders => {
            :include => :guitar }
          })

          return [200, { "Content-Type" => "application/json" }, [ cust_assc ]]
          
        else

          return [200, { "Content-Type" => "application/json" }, [ { :message => "null" }.to_json ]]
        end

    elsif req.path.match("/customer") && req.post?
        customer_hash = JSON.parse(req.body.read)
        Customer.create(name: customer_hash["fullName"], email: customer_hash["email"])
        # binding.pry
        # customer_hash["fullName"]
        # customer_hash["email"]
        
        return [201, { 'Content-Type' => 'application/json' }, [ { :message => "null" }.to_json ] ]

    elsif req.path.match("/order") && req.post?
      order_hash = JSON.parse(req.body.read)
      name = order_hash.pop()
      customer_inst = Customer.all.find_by(name: name)

      order_hash.each do |guitar| 
        Order.create(guitar_id: guitar["id"], customer_id: customer_inst.id)
      end
      
      return [201, { 'Content-Type' => 'application/json' }, [ { :message => "null" }.to_json ] ]
    
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

  def send_order
    order_inst_arr = Order.all
    return [200, { "Content-Type" => "application/json" }, [ order_inst_arr.to_json ]]
  end

  def send_hello
    return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
  end

  def send_not_found
    return [404, {}, ["Path not found!!!"]]
  end
end
# req.path.match("/order") && req.patch?