node[:deploy].each do |application, deploy|
  script "install_phantomjs" do
    interpreter "bash"
    user "root"
    #cwd "#{deploy[:deploy_to]}/current"
    #code <<-EOH
    apt-get install phantomjs
    EOH
  end
end
