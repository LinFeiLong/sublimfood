//
//  RecipeModel.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import Foundation

struct RecipeModel: Identifiable, Codable {
    var id = UUID()
    let title: String
    let image: String
    let ingredients: [String]
    let steps: [String]
    let typeOfRecipe: TypeOfRecipe
}

enum TypeOfRecipe {
    case cook
    case upcycling
    case other
}

extension TypeOfRecipe: Codable {
    
    enum Key: CodingKey {
        case rawValue
    }
    
    enum CodingError: Error {
        case unknownValue
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Key.self)
        let rawValue = try container.decode(Int.self, forKey: .rawValue)
        switch rawValue {
        case 0:
            self = .cook
        case 1:
            self = .upcycling
        case 2:
            self = .other
        default:
            throw CodingError.unknownValue
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {
        case .cook:
            try container.encode(0, forKey: .rawValue)
        case .upcycling:
            try container.encode(1, forKey: .rawValue)
        case .other:
            try container.encode(2, forKey: .rawValue)
        }
    }
    
}
