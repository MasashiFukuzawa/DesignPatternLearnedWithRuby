require './colleague_checkbox'
require './colleague_text_field'
require './colleague_button'

class LoginFrame
  attr_reader :check_guest, :check_login, :text_user, :text_pass, :button_ok, :button_cancel

  def initialize(title)
    @title = title
    create_colleagues
  end

  def create_colleagues
    @check_guest = ColleagueCheckbox.new('Guest', true)
    @check_login = ColleagueCheckbox.new('Guest', false)
    @text_user = ColleagueTextField.new('')
    @text_pass = ColleagueTextField.new('')
    @button_ok = ColleagueButton.new('OK')
    @button_cancel = ColleagueButton.new('Cancel')

    @check_guest.mediator = self
    @check_login.mediator = self
    @text_user.mediator = self
    @text_pass.mediator = self
    @button_ok.mediator = self
    @button_cancel.mediator = self
  end

  def colleague_changed
    if @check_guest.state
      @text_user.set_colleague_enabled(false)
      @text_pass.set_colleague_enabled(false)
      @button_ok.set_colleague_enabled(true)
    else
      @text_user.set_colleague_enabled(true)
      user_pass_changed
    end
  end

  private

    def user_pass_changed
      if @text_user.text.length > 0
        @text_pass.set_colleague_enabled(true)
        if @text_pass.text.length > 0
          @button_ok.set_colleague_enabled(true)
        else
          @button_ok.set_colleague_enabled(false)
        end
      else
        @text_pass.set_colleague_enabled(false)
        @button_ok.set_colleague_enabled(false)
      end
    end
end
