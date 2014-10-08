class WebportalController < ApplicationController

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

end
