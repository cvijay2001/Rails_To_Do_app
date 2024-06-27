class Task < ApplicationRecord
  belongs_to :user

  validates :title, :due_date, :importance, presence: true

  # attribute :status, :boolean, default: false

  def priority_score
    due_date_weight = 0.5
    importance_weight = 0.5

    # Calculate days until due date
    days_until_due = (due_date - Date.today).to_f

    if days_until_due == 0
      days_until_due += 0.1
    end

    # Adjust score calculation for today's due date

    score = (due_date_weight / days_until_due) + (importance_weight * importance)


    score

  end

end
