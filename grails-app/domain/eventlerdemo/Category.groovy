package eventlerdemo

class Category {
	
	String categoryName
	
	String toString () {
		"${categoryName}"
	}
	
	static hasMany = [events: Event]

    static constraints = {
		categoryName (blank: false, unique: true)
    }
}
