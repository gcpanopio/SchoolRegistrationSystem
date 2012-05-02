import com.onb.registrationsystem.*;

class BootStrap {

    def init = { servletContext ->

        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save()

	def adminUser = User.findByUsername('user') ?: new User(username: 'user', password: 'pass', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save()

	if (!adminUser.getAuthorities().contains(adminRole)) {
            UserRole.create(adminUser, adminRole)
        }

    }
    def destroy = {
    }
}


 
