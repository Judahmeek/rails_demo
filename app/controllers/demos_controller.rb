class DemosController < ApplicationController
    def show
        respond_to do |format|
            format.json { render json: "this totally worked", status: "json request successfull", success: true }
            format.js   {}
        end
    end
end
