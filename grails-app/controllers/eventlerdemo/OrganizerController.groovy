package eventlerdemo

class OrganizerController {
	def scaffold = true

    def index() { 
		redirect (action: list)
	}
}
