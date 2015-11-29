package 'apache2'

service 'apache2' do
  supports :status => true
  action [:disable, :stop]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'
end
