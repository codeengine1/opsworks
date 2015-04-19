define :nginx_web_app, :enable => true do
  include_recipe "nginx::service"

  application = params[:application]
  application_name = params[:name]

  directory "#{node[:nginx][:dir]}/ssl" do
    action :create
    owner "root"
    group "root"
    mode 0600
  end

  file "#{node[:nginx][:dir]}/sites-enabled/default" do
    action :delete
    only_if do
      File.exists?("#{node[:nginx][:dir]}/sites-enabled/default")
    end
  end
end
