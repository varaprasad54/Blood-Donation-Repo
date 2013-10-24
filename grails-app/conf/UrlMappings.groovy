class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(action:"index",controller:"home")
		"500"(view:'/error')
	}
}
