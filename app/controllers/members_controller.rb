class MembersController < ApplicationController
    def index 
        @members = Member.all
    end

    def show
        @members = Member.find(params[:id])
        render json: @members
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.create(member_params)
        if @member.save
            redirect_to members_path, notice: "Something was successfully created."
            else
            render :new, status: :unprocessable_entity
            end
    end



    private
    def member_params
        params.require(:member).permit(:scoutnummer, :voornaam, :achternaam)
    end


end
