class CoursesController < ApplicationController

def show
  @course = Course.find(params[:id])
  # pry
end

end
