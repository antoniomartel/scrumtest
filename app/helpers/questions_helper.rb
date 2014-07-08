module QuestionsHelper
  def radio_item(answer)
    "= radio_button_tag answer" || answer.id || ", '" || answer.text || "'"
  end
end
