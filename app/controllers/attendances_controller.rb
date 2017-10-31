class AttendancesController < ApplicationController

    # def new 
    #     @attendance = Attendance.new
    #     @attendance.user = current_user
    #     @attendance.event = Event.find(params[:event_id])
    # end

    def create 
        Attendance.create(user: current_user, event_id: params[:event_id])
        redirect_to event_path(params[:event_id])
    end
end 
