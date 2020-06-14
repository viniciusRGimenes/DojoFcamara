require "report_builder"
require "date"

Before do
  @login = LoginPage.new
  @secure = SecureView.new
  @control = DynamicControl.new

  page.current_window.resize_to(1280,720)
end

After do
  page.driver.browser.window_handles.each do |handle|
  page.driver.browser.switch_to.window(handle)
  page.execute_script "window.close()"
  end
end
Before("@login") do
  user = CONFIG["user"]["cat_user"]
  @login.go
  @login.with(user["user"], user["pass"])
  @login.sign_in_button
end

Before("@control") do
  @control.rm
  @control.add
end

After do
  temp_shot = page.save_screenshot('log/temp_shot.png')
  screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
  embed(screenshot, 'image/png', 'Screenshot')
end

d = DateTime.now
@current_date = d.to_s.tr(":","-")

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/" + @current_date
    config.report_types = [:html]
    config.report_title = "Dojo - WebApp"
    config.compress_image = true
    config.additional_info = { "App" => "Web", "Data de execução" => @current_date  }
    config.color = "indigo"
  end
  ReportBuilder.build_report
end