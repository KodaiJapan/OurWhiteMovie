//
//  MovieModel.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import Foundation

struct DougaInfo:Codable{
    let subjects:SubjectInfo
}

struct SubjectInfo: Codable{
    
    let math:[Info]
    let english:[Info]
    let chemistry:[Info]
    let physics:[Info]
    let japanese:[Info]
    let history:[Info]
    let geometry:[Info]
}

struct Info: Codable, Hashable {
    let category:String
    let title: String
    let detail: String
    let teacher: String
    let url: String
    let pdf: String
    let image: String
}


class MovieModel:ObservableObject {
    @Published var dougas:DougaInfo = load("shiratani.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
