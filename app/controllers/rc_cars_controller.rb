class RcCarsController < InheritedResources::Base

  private

    def rc_car_params
      params.require(:rc_car).permit(:name, :description, :make, :model, :category)
    end

end
