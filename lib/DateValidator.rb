class DateValidator < ActiveModel::Validator
  def validate record
    unless value.due_date > DateTime.now
      record.errors[:due_date] << 'Date must be in future'
    end
  end
end
