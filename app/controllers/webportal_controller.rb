class WebportalController < ApplicationController
  
  before_filter :authenticate_user, :only => [:index,:data,:project, :members]
  
  def index
      
  end

  def data
    @ftypes = ['data','resource']
    @wgtypes = ['Lung','Melanoma','Colorectal','Breast']
    @stypes = ['chemical','genetic']
    @files = ['a']
  end
  
  def project
    
  end
  
  def members
    
  end

end
