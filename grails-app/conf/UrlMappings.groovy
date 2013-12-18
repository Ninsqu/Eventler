class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/about"(controller: staticView)
		"/"(view:"/index")
		"500"(view:'/error')
//		"/about"(view:"/about")
	}
}
