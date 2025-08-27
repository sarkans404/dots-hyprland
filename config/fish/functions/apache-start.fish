function apache-start --wraps='sudo /opt/lampp/lampp startapache' --description 'alias apache-start=sudo /opt/lampp/lampp startapache'
  sudo /opt/lampp/lampp startapache $argv
        
end
