class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.starts_with? 'X'
      record.errors[:title] << 'Need a name starting with X please!'
    end
  end
end