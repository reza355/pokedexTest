//
//  PokedexMoyaTarget.swift
//  Pokedex
//
//  Created by Fathureza Januarza on 25/04/18.
//  Copyright © 2018 Fathureza Januarza. All rights reserved.
//

import Foundation
import Moya

enum PokedexMoyaTarget {
	case pokemon
}

extension PokedexMoyaTarget: TargetType {
	
	var sampleData: Data {
		return Data()
	}
	
	
	var headers: [String : String]? {
		return [:]
	}
	
	var baseURL: URL {
		guard let linkURL = URL(string: "https://pokeapi.co") else {
			return NSURL() as URL
		}
		return linkURL
	}
	
	var path: String {
		
		switch self {
		case .pokemon:
			return "/api/v2/pokemon/"
		}
	}
	
	var method: Moya.Method {
		
		switch self {
		default:
			return .get
		}
	}
	
	var parameterEncoding: ParameterEncoding {
		
		// TODO: Please add `switch` statement for different `parameterEncoding`
		
		return JSONEncoding.default
	}
	
	var parameters: [String : Any]? {
		
		switch self {
	
		default:
			return [:]
		}
	}
	
	var task: Task {
		
		guard let parameter = parameters else {
			return .requestPlain
		}
		
		return .requestParameters(parameters: parameter, encoding: parameterEncoding)
	}
}
