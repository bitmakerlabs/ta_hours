class My::OfficeHoursController < My::MyController

  def index
    @hours = current_user.hours
  end

  def new
    @hour = OfficeHour.new
  end

  def create
    @hour = OfficeHour.new params[:office_hour]
  end
end
