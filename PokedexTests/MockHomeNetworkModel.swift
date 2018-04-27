//
//  MockHomeNetworkModel.swift
//  PokedexTests
//
//  Created by Fathureza Januarza on 25/04/18.
//  Copyright © 2018 Fathureza Januarza. All rights reserved.
//
import Foundation
@testable import Pokedex

class MockHomeNetworkModel {
    
	class func mock() -> HomeNetworkModel {
	
	
		var networkModel = HomeNetworkModel()
		networkModel.pokemonName = [String]()
		
		return networkModel
	}
}

