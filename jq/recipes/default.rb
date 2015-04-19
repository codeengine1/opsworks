bash 'install_jq' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
wget --output-document /usr/bin/jq http://stedolan.github.io/jq/download/linux64/jq
chmod +x /usr/bin/jq
  EOH
end