function mysql-start --wraps='sudo /opt/lampp/lampp startmysql' --description 'alias mysql-start=sudo /opt/lampp/lampp startmysql'
  sudo /opt/lampp/lampp startmysql $argv
        
end
