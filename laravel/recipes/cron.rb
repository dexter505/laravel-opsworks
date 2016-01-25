node[:deploy].each do |application, deploy|
  cron "laravel_tasks" do
    command "cd #{deploy[:deploy_to]}/current && php artisan schedule:run >> /dev/null 2>&1"
  end
end
