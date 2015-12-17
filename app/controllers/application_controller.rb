class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'will_paginate'
  require 'will_paginate/collection'
  before_filter :authenticate_user!
end
