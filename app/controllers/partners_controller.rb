class PartnersController < ApplicationController

  def index
    @partners = current_user.partners.all
  end

  def show
    @partner = Partner.find(params[:id])
    if current_user.id == @partner.user_id
      @partner
    else
      redirect_to partners_path, notice: "ログインユーザー以外のページは表示できません"
    end

  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = current_user.partners.new(partner_params)
    if @partner.save
      redirect_to partners_path, success: "お相手登録が完了しました"
    else
      flash.now[:danger] = "お相手登録に失敗しました"
      render :new
    end
  end

  def edit
    @partner = current_user.partners.find(params[:id])
  end

  def update
    partner = Partner.find(params[:id])
    partner.update!(partner_params)
    redirect_to partners_url, notice: "お相手（#{partner.name}様）を編集しました"
  end

  def destroy
    partner = Partner.find(params[:id])
    partner.destroy
    redirect_to partners_url, notice: "お相手（#{partner.name}様）を削除しました"
  end

  private
   
    # Only allow a list of trusted parameters through.
    def partner_params
      params.require(:partner).permit(:name, :referral_source, :age, :work, :hobby, :holiday, :income, :allergy, :like, :not_fit, :note, :firstdate_detail, :firstdate_appearance, :firstdate_talk ,:firstdate_feeling, :seconddate_detail, :seconddate_appearance, :seconddate_talk, :seconddate_feeling, :thirddate_detail, :thirddate_appearance, :thirddate_talk, :thirddate_feeling)
    end
  
end
