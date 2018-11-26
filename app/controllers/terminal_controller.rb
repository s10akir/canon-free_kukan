class TerminalController < ApplicationController
  def index

  end

  def login
    begin
      # idの連結
      id = params['id_1'].to_i * 1_000_000_000_000 + params['id_2'].to_i * 100_000_000 + params['id_3'].to_i * 10_000 + params['id_4'].to_i
      @user = User.find(id)
    rescue
      redirect_to action: 'index', flash: '会員証の読み込みに失敗しました。' unless @user
    end
  end
end
