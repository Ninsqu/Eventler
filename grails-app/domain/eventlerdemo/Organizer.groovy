package eventlerdemo

class Organizer {
	
	String orgName
	String orgEmail
	String orgPhone
	String orgHomepage
	String orgSocialMedia
	boolean isTrusted
	
	String toString () {
		"${orgName}"
	}
	
	static hasMany = [events: Event]

    static constraints = {
		orgName( blank: false)
		orgEmail()
		orgPhone()
		orgHomepage()
		orgSocialMedia()
    }
}
