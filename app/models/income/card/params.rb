class Income::Card::Params
  def self.to_save(params)
    params.permit(
      :description,
      :card_id,
      :group_id,
      :category_id,
      :income_type,
      :end_at
    ).merge(
      value: params[:value],
      date: params[:date]
    )
  end
end
