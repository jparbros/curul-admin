class BulkUpdateRepresentativesController < ApplicationController
  skip_authorization_check
  
  layout 'full'
  
  def edit
    Representative.order('id asc').all
  end
end
