class DateValidator < ActiveModel::Validator
  def validate record
    unless record.due_date > DateTime.now
      record.errors[:due_date] << 'Date must be in future'
    end
  end
end
