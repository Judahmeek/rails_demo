class DemosController < ApplicationController
    def test
        respond_to do |format|
            format.json { render json: {'result'=>"json request successful"} }
            format.js   { render json: {'result'=>"js request successful"} }
        end
    end
end
