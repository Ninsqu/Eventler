package eventlerdemo

class VenueController {
	def scaffold = true

    def index() { 
		redirect (action: list)
	}
}
