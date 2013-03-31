class PaymentsController < InheritedResources::Base

def new

  @payment = Payment.new


respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bets }
    end
  end

    def create
    @payment = Payment.new(params[:bet])
    @payment.user_id = current_user.id
    @payment.displayname = current_user.displayname
    @payment.bet_id = bet.id

    respond_to do |format|
      if @bet.save
        format.html { redirect_to @bet, notice: 'Bet was successfully created.' }
        format.json { render json: @bet, status: :created, location: @bet }
      else
        format.html { render action: "new" }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end 

  private

  def bet
    @bet = bet.find(params[current_user.id])
  end

end
