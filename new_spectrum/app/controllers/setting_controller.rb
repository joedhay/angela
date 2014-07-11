class SettingController < ApplicationController
  def index

    #For Looping
    @x = 1
    @y = 1

    #BY NETWORK
    @networks = Network.find_by_sql('SELECT * FROM networks WHERE id_user=1')

    #BY APPLICATION
    @apps = Application.find_by_sql('SELECT DISTINCT name FROM applications WHERE id_user=1')

    #BY OS
    @oses = Network.find_by_sql('SELECT DISTINCT os FROM networks WHERE id_user=1')


    #List of Monitor
    @hardwares = Hardware.find_by_sql('SELECT * FROM hardwares WHERE id_user=1')
    @applications = Application.find_by_sql('SELECT * FROM applications WHERE id_user=1')
    @services = Protocol.find_by_sql('SELECT * FROM protocols WHERE id_user=1')
    @webservers = WebServer.find_by_sql('SELECT * FROM web_servers WHERE id_user=1')
    @dbservers = DbServer.find_by_sql('SELECT * FROM db_servers WHERE id_user=1')
    @mailservers = MailServer.find_by_sql('SELECT * FROM mail_servers WHERE id_user=1')
    @vmachines = Vmachine.find_by_sql('SELECT * FROM vmachines WHERE id_user=1')

    #gon
    gon.hardware = @hardwares
    gon.application = @applications
    gon.service = @services
    gon.webserver = @webservers
    gon.dbserver = @dbservers
    gon.mailserver = @mailservers
    gon.vmachine = @vmachines
  end
end
