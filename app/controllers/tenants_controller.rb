class TenantsController < ApplicationController

    def index
        tenants = Tenant.all
        render json: Tenants
      end
    
      def create
        tenant = Tenant.create(number: params[:number])
        render json: tenant
      end
    
      def update
        tenant = Tenant.find_by(id: params[:id])
        tenant.update(number: params[:number])
        render json: tenant
      end
    
      def destroy
        tenant = Tenant.find_by(id: params[:id])
        activity.destroy
        header :no_content
      end

end
