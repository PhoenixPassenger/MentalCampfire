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
    
    var midia: [[(img:String, title:String, url:String)]] =
    [
           [
           (img: "video01", title: "Relaxamento guiado - Luz Azul", url:"6C81xjBWBRQ"),
           (img: "video02", title: "Controle sua ansiedade", url: "GgcfEkdGf1I"),
           (img: "video03", title: "Para meditar e relaxar", url:"vmt2Wcc9-Is"),
           (img: "video04", title: "RESPIRE FUNDO (exercício de respiração e relaxamento)", url:"xoTwJrPgVo4"),
           (img: "video05", title: "Meditação para relaxar", url: "5qHXtfSDoJM")
           ],
           [
            (img: "musica01", title: "Jazz", url:""),
            (img: "musica02", title: "Downfall", url:""),
            (img: "musica03", title: "OperaRock", url:""),
            (img: "musica04", title: "Country", url:""),
            (img: "musica05", title: "Blues", url:"")
           ]
      ]
    
   

}
