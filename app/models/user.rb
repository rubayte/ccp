class User
  

  def self
    #con = Mysql.connect('www.ediva.crg.eu', 'edivaUser', 'edivapublic', 'eDiVaUser')
    #return con
  end
  
  
  
  ## validate saved user for login
  def self.validateUser(login_username,login_password)
    
    if (login_username == "webportalUser" and login_password == "wpccp2014")
      return "validuser"
    else
      return "invaliduser"
    end  
    
  end
  

end