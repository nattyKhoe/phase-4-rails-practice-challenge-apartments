class TenantsController < ApplicationController
    before_action :set_tenant, only: [:update, :destroy, :show]

    def index
        render json: Tenant.all, status: :ok
    end

    def show
        render json: @tenant, status: :ok
    end

    def update
        @tenant.update!(tenant_params)
        render json: @tenant, status: :accepted
    end

    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: :created
    end

    def destroy
        @tenant.destroy
        head :no_content
    end

    private

    def set_tenant
        @tenant = Tenant.find(params[:id])
    end

    def tenant_params
        params.permit(:name, :age)
    end
end
