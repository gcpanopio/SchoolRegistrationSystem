import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class WelcomeController{

def springSecurityService

	def index = {		
		if (springSecurityService.isLoggedIn()) {
			if (springSecurityUtils.ifAnyGranted('ROLE_USER')){
				forward controller:"student", action:"profile" 
			}
			
		}
	
	}



}
