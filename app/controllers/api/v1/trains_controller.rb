class Api::V1::TrainsController < ApiController

  def index
    @trains = Train.all.paginate( :page => params[:page] )
  end

  def show
    @train = Train.find_by_number!( params[:train_number] )
  end

end
