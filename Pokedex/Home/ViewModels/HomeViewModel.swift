//
//  HomeViewModel.swift
//  Pokedex
//
//  Created by Fathureza Januarza on 25/04/18.
//  Copyright © 2018 Fathureza Januarza. All rights reserved.
//

import Foundation

final class HomeViewModel {
	
	let networkModel: HomeNetworkModel
	
	init(networkModel: HomeNetworkModel) {
		self.networkModel = networkModel
	}
}
