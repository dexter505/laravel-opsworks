node[:deploy].each do |application, deploy|
  interpreter "bash"
  user "root"
  cwd "#{deploy[:deploy_to]}"
  code <<-EOH
    mv current/storage/* shared
    rm -rf current/storage
    ln -s shared current/storage
  EOH
end