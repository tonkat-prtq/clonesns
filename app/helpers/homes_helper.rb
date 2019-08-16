module HomesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_homes_path
    elsif action_name == 'edit'
      home_path
    end
  end
end
