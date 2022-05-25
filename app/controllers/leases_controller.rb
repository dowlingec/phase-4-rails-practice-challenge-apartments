class LeasesController < ApplicationController

    # #delete once checked functionality
    # def index
    #     leases = Lease.all
    #     render json: leases
    # end

    def create
        lease = Lease.create(lease_params)
        render json: lease
    end

    def destroy
        lease = Lease.find_by(id: params[:id])
        lease.destroy
        header :no_content
    end

    private
    def lease_params
        params.permit(:rent, :tenant_id, :apartment_id)
    end
end
