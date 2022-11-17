class RcCarsController < InheritedResources::Base

  before_action :authenticate_user!

  private

    def rc_car_params
      params.require(:rc_car).permit(:name, :description, :make, :model, :category, :car_image)
    end

end
