class My::OfficeHoursController < My::MyController

  def index
    @hours = current_user.hours
  end

  def show
    @hour = current_user.hours.find params[:id]
  end

  def new
    @hour = OfficeHour.new
  end

  def create
    @hour = current_user.hours.build params[:office_hour]
    @hour.start_time = Time.zone.parse(params[:start_time]).to_datetime

    if @hour.save
      redirect_to [:my, :office_hours]
    else
      render :new
    end
  end
end
