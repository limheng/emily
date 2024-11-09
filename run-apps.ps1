# Start Sprint Boot

cd C:/users/vagrant/downloads/demo
mvn spring-boot:run

# Start using vagrant command line
# vagrant winrm -c 'Stop-Process -Name java -Force'
# vagrant winrm -c 'cd C:/users/vagrant/downloads/demo; mvn clean compile; mvn spring-boot:run'