class TerminalController < ApplicationController
  def index

  end

  def login
    begin
      # idの連結
      id = params['id_1'].to_i * 1_000_000_000_000 + params['id_2'].to_i * 100_000_000 + params['id_3'].to_i * 10_000 + params['id_4'].to_i
      @user = User.find(id)

      if RoomStatus.where(user_id: 1).last.status == 1
        flash[:user] = @user
        redirect_to action: 'pay'
      end
    rescue
      flash.now[:alert] = '会員カードの読み込みに失敗しました'
      redirect_to action: 'index', id: id
    end


    @normal_rooms = Room.where(room_type: 0)
    @dx_rooms = Room.where(room_type: 1)
    @ex_rooms = Room.where(room_type: 2)
  end

  def pay

  end
end
