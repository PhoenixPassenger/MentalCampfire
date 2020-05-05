//
//  MidiaModel.swift
//  MentalCampfire
//
//  Created by Lidiane Gomes Barbosa on 05/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import Foundation

struct MidiaModel{
    
    let label:[String] = ["Vídeos", "Músicas"]
    
    var midia: [[(img:String, text:String)]] =
    [
       [
               (img: "video01", text: "Sons da natureza"),
               (img: "video02", text: "Música relaxante"),
               (img: "video03", text: "Sons que acalmam"),
               (img: "video04", text: "Música clássica para relaxar"),
               (img: "video05", text: "Som de chuva")
        ],

        [
               (img: "musica01", text: "Sons da natureza"),
               (img: "musica02", text: "Música relaxante"),
               (img: "musica03", text: "Sons que acalmam"),
               (img: "musica04", text: "Música clássica para relaxar"),
               (img: "musica05", text: "Som de chuva")
           ]
      ]
    
   

}