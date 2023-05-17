module LettersHelper
  HANNAHS_BIRTHDAY_DATE = "1994-05-17 00:00:00"
  def hannahs_birthday?
    DateTime.current.day == 17 && DateTime.current.month == 5
  end
end
