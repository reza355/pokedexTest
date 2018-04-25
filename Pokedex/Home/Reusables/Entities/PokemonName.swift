//
//  PokemonName.swift
//  Pokedex
//
//  Created by Fathureza Januarza on 25/04/18.
//  Copyright © 2018 Fathureza Januarza. All rights reserved.
//

import Foundation
import ObjectMapper

struct PokemonName: Mappable {
	
	var name: String?
	
	init(name: String) {
		self.name = name
	}
	
	init?(map: Map) {
		mapping(map: map)
	}
	
	mutating func mapping(map: Map) {
		
		name <- map["name"]
	}
}


