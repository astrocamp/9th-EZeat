class PagesController < ApplicationController
  def index
    @stores = Store.all

    # 各式餐廳類型的實體變數,先全部寫出來,未來用不到會再刪掉
    @foodtype0_stores = @stores.where(food_type: "中式")
    @foodtype1_stores = @stores.where(food_type: "日式")
    @foodtype2_stores = @stores.where(food_type: "韓式")
    @foodtype3_stores = @stores.where(food_type: "印度")
    @foodtype4_stores = @stores.where(food_type: "義式")
    @foodtype5_stores = @stores.where(food_type: "英式")
    @foodtype6_stores = @stores.where(food_type: "美式")
    @foodtype7_stores = @stores.where(food_type: "法式")
    @foodtype8_stores = @stores.where(food_type: "德式")
  end

  def myorder
    @user = Order.where(user_email: "dreamorange830@gmail.com")
    @orders = @user.all
    # @user_all_tickets = @orders.where(ids: @user.ids)
  end

  def mytickets
  end
end
