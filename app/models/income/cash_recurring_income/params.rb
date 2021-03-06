class Income::CashRecurringIncome::Params
  def self.to_save(params)
    params.permit(
      :description,
      :group_id,
      :category_id,
      :income_type,
      :end_at,
      income_recurrents_attributes: [
        :id, :date, :value, :_destroy
      ]
    ).merge(
      quantity: params[:quantity]
    )
  end
end
