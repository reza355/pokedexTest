//
//  PokedexSpec.swift
//  PokedexTests
//
//  Created by Fathureza Januarza on 25/04/18.
//  Copyright © 2018 Fathureza Januarza. All rights reserved.
//

import Quick
import Nimble
@testable import Pokedex

class PokedexSpec: QuickSpec {
	
	var viewModel = HomeViewModel(networkModel: MockHomeNetworkModel.mock())
	
	override func spec() {
		describe("Pokemon Name") {
			it("Pokemon Name isNil") {
				expect(self.viewModel.networkModel.pokemonName).notTo(beEmpty())
			}
		}
	}
	
}
