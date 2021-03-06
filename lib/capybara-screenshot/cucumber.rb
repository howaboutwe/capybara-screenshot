After do |scenario|
  if Capybara::Screenshot.autosave_on_failure && scenario.failed?
    filename_prefix = Capybara::Screenshot.filename_prefix_for(:cucumber, scenario)

    saver = Capybara::Screenshot::Saver.new(Capybara, Capybara.page, true, filename_prefix)
    saver.save
  end
end
