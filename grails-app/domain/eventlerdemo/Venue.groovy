package eventlerdemo

class Venue {
	
	String venueName
	String address
	String city
	String venueHomepage
	
	String toString () {
		"${venueName}"
	}
	
	static hasMany = [events: Event]
	
    static constraints = {
		venueName( blank: false)
		address()
		city( blank: false)
		venueHomepage()
    }
}
