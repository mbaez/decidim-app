# frozen_string_literal: true
module Decidim
  module Admin
    # Controller that allows managing categories.
    class NavbarsController < Decidim::Admin::ApplicationController
      before_action :set_navbar, only: [:show, :edit, :update, :destroy]

      # GET /navbars
      def index
        @navbars = Navbar.all
      end

      # GET /navbars/1
      def show
      end

      # GET /navbars/new
      def new
        @navbar = Navbar.new
      end

      # GET /navbars/1/edit
      def edit
      end

      # POST /navbars
      def create
        @navbar = Navbar.new(navbar_params)

        if @navbar.save
          redirect_to @navbar, notice: 'Navbar was successfully created.'
        else
          render :new
        end
      end

      # PATCH/PUT /navbars/1
      def update
        if @navbar.update(navbar_params)
          redirect_to @navbar, notice: 'Navbar was successfully updated.'
        else
          render :edit
        end
      end

      # DELETE /navbars/1
      def destroy
        @navbar.destroy
        redirect_to navbars_url, notice: 'Navbar was successfully destroyed.'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_navbar
          @navbar = Navbar.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def navbar_params
          params.require(:navbar).permit(:label, :url)
        end
    end
  end
end
