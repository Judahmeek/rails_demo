class DemosController < ApplicationController
    def test
        respond_to do |format|
            format.json { render json: {'result'=>"json request successful"} }
            format.js   {}
        end
    end
end
