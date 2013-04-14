class PaymentsController < InheritedResources::Base

def new

  @payment = Payment.new


respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bets }
    end
  end

    def create
    @payment = Payment.new(params[:payment])
    @payment.amount = '50'
    @payment.user_id = current_user.id
    @payment.displayname = current_user.displayname
    @payment.bet_id = current_user.bet_id

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Bet was successfully created.' }
        format.json { render json: @payment, status: :created, location: @payment }
      else
        format.html { render action: "new" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end 

  private

  def bet
    @bet = bet.find(params[current_user.id])
  end

end
