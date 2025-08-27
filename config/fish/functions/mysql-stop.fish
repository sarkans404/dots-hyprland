function mysql-stop --wraps='sudo /opt/lampp/lampp stopmysql' --description 'alias mysql-stop=sudo /opt/lampp/lampp stopmysql'
  sudo /opt/lampp/lampp stopmysql $argv
        
end
