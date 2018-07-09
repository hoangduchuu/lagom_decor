class User::BaseUserController < ApplicationController
  protect_from_forgery with: :exception

end