function apache-stop --wraps='sudo /opt/lampp/lampp stopapache' --description 'alias apache-stop=sudo /opt/lampp/lampp stopapache'
  sudo /opt/lampp/lampp stopapache $argv
        
end
