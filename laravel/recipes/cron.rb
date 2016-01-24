cron "laravel_tasks" do
  command "cd /srv/www/myapp/current && php artisan schedule:run >> /dev/null 2>&1"
end
