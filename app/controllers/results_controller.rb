class ResultsController < ApplicationController
  before_action :is_authenticated?
  def index
    @item = Item.new
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @results = factual.table("products-cpg").search(params[:q]).rows
    # @result = factual.table("products-cpg").search(params[:q]).rows
    puts @results
  end

  def show
    puts params[:id]
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @result = factual.table("products-cpg").search(params[:id]).rows
  end

  def new
    @result = :item
  end

end

