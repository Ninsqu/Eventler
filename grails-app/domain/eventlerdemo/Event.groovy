package eventlerdemo

class Event {
	
	String title
	String details
	Date start
	Date end
	String eventHomepage
	String eventSocialmedia
	boolean forAdultsOnly
	
	String toString () {
		"${title}  ${start}"
	}
	
	static belongsTo = [category: Category, venue: Venue, organizer: Organizer]

    static constraints = {
		title( blank: false)
		details()
		start(min: new Date())
		end(min: new Date())
		eventHomepage()
		eventSocialmedia()
	 }
}
