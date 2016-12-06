class ApiController < ApplicationController

  skip_before_action :verify_authenticity_token

  def position
		sensor = Sensor.find_or_create_by(dev_eui: position_params["devEUI"])
		sensor.data.create({
			longitude: position_params["fields"]["long"],
			latitude: position_params["fields"]["lat"],
			height: position_params["fields"]["height"],
			accuracy: position_params["fields"]["hdop"]
		})
		render :body => nil, status: :created
  end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
	  def position_params
	    params.require(:position).permit(
	      :devEUI,
	      :fields => [
	        :lat,
	        :long,
	        :height,
	        :hdop
	      ]
	    )
	  end
end
