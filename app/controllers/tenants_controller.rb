class TenantsController < ApplicationController

    def index
        tenants = Tenant.all
        render json: tenants
    end
    
    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant
    end
    
    def update
        tenant = Tenant.find_by(id: params[:id])
        tenant.update(tenant_params)
        render json: tenant
    end
    
    def destroy
        tenant = Tenant.find_by(id: params[:id])
        tenant.destroy
        header :no_content
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end
end
