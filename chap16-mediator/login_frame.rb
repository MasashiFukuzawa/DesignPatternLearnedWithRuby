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
    @check_guest = Checkbox::ColleagueCheckbox.new('Guest', true)
    @check_login = Checkbox::ColleagueCheckbox.new('Guest', false)
    @text_user = TextField::ColleagueTextField.new('', 10)
    @text_pass = TextField::ColleagueTextField.new('', 10)
    @button_ok = Button::ColleagueButton.new('OK')
    @button_cancel = Button::ColleagueButton.new('Cancel')

    @check_guest.mediator = self
    @check_login.mediator = self
    @text_user.mediator = self
    @text_pass.mediator = self
    @button_ok.mediator = self
    @button_cancel.mediator = self
  end

  def colleague_changed
    if @check_guest.state
      @text_user.colleague_enabled?(false)
      @text_pass.colleague_enabled?(false)
      @button_ok.colleague_enabled?(true)
    else
      @text_user.colleague_enabled?(true)
      user_pass_changed
    end
  end

  def action_performed(e)
    puts e.to_s
  end

  private

    def user_pass_changed
      if @text_user.text.length > 0
        @text_pass.colleague_enabled?(true)
        if @text_pass.text.length > 0
          @button_ok.colleague_enabled?(true)
        else
          @button_ok.colleague_enabled?(false)
        end
      else
        @text_pass.colleague_enabled?(false)
        @button_ok.colleague_enabled?(false)
      end
    end
end
