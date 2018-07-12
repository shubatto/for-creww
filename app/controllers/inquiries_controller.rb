class InquiriesController < ApplicationController
	before_action :load_inquiry, only: [:confirm, :create]
	BACK_BUTTON = '戻る'

  def new
		@inquiry = Inquiry.new
  end
	
	def confirm
		@inquiry = Inquiry.new(inquiry_params)
		render :new if @inquiry.invalid?
	end

	def create
		if back_clicked?
			render :new
		elsif @inquiry.save
			redirect_to complete_inquiries_path
		end
	end

	private

	def load_inquiry
		@inquiry = Inquiry.new(inquiry_params)
	end

	def inquiry_params
		params.require(:inquiry).permit(:name, :email, :inquiry_type_id, :content)
	end

	def back_clicked?
		params[:commit] == BACK_BUTTON
	end
end
